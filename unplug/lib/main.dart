
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/friends_screen.dart';
import 'services/usage_service.dart';
import 'theme/dark_theme.dart';

void main() {
  runApp(const UnplugApp());
}

class UnplugApp extends StatelessWidget {
  const UnplugApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsageService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildDarkTheme(),
        home: const RootScaffold(),
      ),
    );
  }
}

class RootScaffold extends StatefulWidget {
  const RootScaffold({Key? key}) : super(key: key);

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    StatsScreen(),
    FriendsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey[500],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
        ],
      ),
    );
  }
}