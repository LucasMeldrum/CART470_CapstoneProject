import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:usage_stats/usage_stats.dart';

class UsageService extends ChangeNotifier {
  static const platform = MethodChannel('unplug/settings');

  bool _hasPermission = false;
  Duration _todayUsage = Duration.zero;
  Duration _weekUsage = Duration.zero;
  List<UsageInfo> _todayDetails = [];
  Timer? _permissionTimer;
  String _status = 'Idle';

  UsageService() {
    _startPermissionCheck();
  }

  bool get hasPermission => _hasPermission;
  Duration get todayUsage => _todayUsage;
  Duration get weekUsage => _weekUsage;
  List<UsageInfo> get todayDetails => _todayDetails;
  String get status => _status;

  void _startPermissionCheck() {
    _permissionTimer = Timer.periodic(const Duration(seconds: 2), (timer) async {
      bool perm = await UsageStats.checkUsagePermission() ?? false;
      if (perm && !_hasPermission) {
        _hasPermission = true;
        _status = 'Permission granted';
        notifyListeners();
      }
    });
  }

  Future<void> requestPermission() async {
    bool perm = await UsageStats.checkUsagePermission() ?? false;
    if (!perm) {
      try {
        await platform.invokeMethod('openUsageAccessSettings');
        _status = 'Please enable usage access in settings';
      } on PlatformException catch (e) {
        _status = 'Failed to open settings: ${e.message}';
      }
    } else {
      _status = 'Permission already granted';
      _hasPermission = true;
    }
    notifyListeners();
  }

  Duration _durationFromMs(String? ms) {
    if (ms == null) return Duration.zero;
    int parsed = int.tryParse(ms) ?? 0;
    return Duration(milliseconds: parsed);
  }

  Future<void> fetchUsage() async {
    _status = 'Fetching usage...';
    notifyListeners();

    DateTime now = DateTime.now();
    DateTime dayStart = DateTime(now.year, now.month, now.day);
    DateTime weekStart = now.subtract(const Duration(days: 7));

    try {
      List<UsageInfo> todayStats = await UsageStats.queryUsageStats(dayStart, now);
      Duration today = Duration.zero;
      for (var info in todayStats) {
        today += _durationFromMs(info.totalTimeInForeground);
      }

      List<UsageInfo> weekStats = await UsageStats.queryUsageStats(weekStart, now);
      Duration week = Duration.zero;
      for (var info in weekStats) {
        week += _durationFromMs(info.totalTimeInForeground);
      }

      _todayUsage = today;
      _weekUsage = week;
      _todayDetails = todayStats;
      _status = 'Usage fetched';
      notifyListeners();

      // Optionally log details
      _logAllUsageStats(dayStart, now);
    } catch (e) {
      _status = 'Error fetching usage: $e';
      notifyListeners();
    }
  }

  Future<void> _logAllUsageStats(DateTime start, DateTime end) async {
    try {
      List<UsageInfo> stats = await UsageStats.queryUsageStats(start, end);
      if (stats.isEmpty) {
        if (kDebugMode) print('No usage stats available.');
        return;
      }
      for (var info in stats) {
        if (kDebugMode) {
          print('------------');
          print('Package Name: ${info.packageName}');
          print('First Time Stamp: ${info.firstTimeStamp}');
          print('Last Time Used: ${info.lastTimeUsed}');
          print('Total Time in Foreground (ms): ${info.totalTimeInForeground}');
          print('------------\n');
        }
      }
    } catch (e) {
      if (kDebugMode) print('Error logging usage stats: $e');
    }
  }

  @override
  void dispose() {
    _permissionTimer?.cancel();
    super.dispose();
  }
}