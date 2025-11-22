import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/usage_service.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  String _formatDuration(Duration d) {
    int hours = d.inHours;
    int minutes = d.inMinutes.remainder(60);
    return '${hours}h ${minutes}m';
  }

  @override
  Widget build(BuildContext context) {
    final usage = Provider.of<UsageService>(context);

    double goalHours = 8.0;
    double progress = (usage.todayUsage.inMinutes / (goalHours * 60)).clamp(0.0, 1.0);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Unplug', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              ],
            ),
            const SizedBox(height: 12),

            // Main card
            UnplugCard(
              child: Column(
                children: [
                  Text(_formatDuration(usage.todayUsage), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text("Today's screen time", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 12),
                  GoalProgressBar(progress: progress),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Activity grid
            Row(
              children: [
                Expanded(
                  child: ActivityTile(
                    icon: Icons.message,
                    title: 'Messaging',
                    subtitle: '22m',
                    delta: '-12%',
                    deltaColor: Colors.green,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ActivityTile(
                    icon: Icons.people,
                    title: 'Social Media',
                    subtitle: '2h 17m',
                    delta: '-8%',
                    deltaColor: Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: ActivityTile(
                    icon: Icons.sports_esports,
                    title: 'Gaming',
                    subtitle: '45m',
                    delta: '+25%',
                    deltaColor: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ActivityTile(
                    icon: Icons.videocam,
                    title: 'Streaming',
                    subtitle: '1h 8m',
                    delta: '+5%',
                    deltaColor: Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Friends preview and weekly chart
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UnplugCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Friends Activity', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          // For simplicity we show static preview rows
                          ListTile(leading: CircleAvatar(child: Text('M')), title: Text('Mike'), subtitle: Text('3h 22m today')), 
                          ListTile(leading: CircleAvatar(child: Text('S')), title: Text('Sarah'), subtitle: Text('5h 45m today')),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    UnplugCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("This Week's Average", style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          // Placeholder bar chart with simple rows
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(7, (index) => Container(width: 18, height: 20.0 + index * 8, color: Colors.grey[700])),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Controls
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => Provider.of<UsageService>(context, listen: false).requestPermission(),
                          child: const Text('Request Permission'),
                        ),
                        ElevatedButton(
                          onPressed: Provider.of<UsageService>(context).hasPermission ? () => Provider.of<UsageService>(context, listen: false).fetchUsage() : null,
                          child: const Text('Fetch Screen Time'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}