import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/usage_service.dart';
import '../widgets/widgets.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  String _formatDuration(Duration d) {
    int hours = d.inHours;
    int minutes = d.inMinutes.remainder(60);
    return '${hours}h ${minutes}m';
  }

  @override
  Widget build(BuildContext context) {
    final usage = Provider.of<UsageService>(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Friends', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.person_add)),
              ],
            ),
            const SizedBox(height: 12),

            UnplugCard(
              child: Column(
                children: [
                  const Text('Your Time', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Text(_formatDuration(usage.todayUsage), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Column(children: [Text('47', style: TextStyle(fontWeight: FontWeight.bold)), Text('Pickups')]),
                      Column(children: [Text('12m', style: TextStyle(fontWeight: FontWeight.bold)), Text('Avg Session')]),
                      Column(children: [Text('8:30', style: TextStyle(fontWeight: FontWeight.bold)), Text('First Pickup')]),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView(
                children: const [
                  FriendRow(name: 'Sarah Chen', time: '3h 12m', pickups: '32 pickups, 6m avg', delta: '+25%', deltaColor: Colors.red),
                  FriendRow(name: 'Mike Johnson', time: '6h 45m', pickups: '63 pickups, 7m avg', delta: '-17%', deltaColor: Colors.green),
                  FriendRow(name: 'Emma Wilson', time: '4h 56m', pickups: '41 pickups, 7m avg', delta: '+5%', deltaColor: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}