import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/usage_service.dart';
import '../widgets/widgets.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usage = Provider.of<UsageService>(context);

    String formatDuration(Duration d) {
      return '${d.inHours}h ${d.inMinutes.remainder(60)}m';
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Stats', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ToggleButtons(
                  isSelected: const [true, false, false],
                  onPressed: (i) {},
                  children: const [Text('Daily'), Text('Weekly'), Text('Monthly')],
                ),
              ],
            ),

            const SizedBox(height: 12),

            UnplugCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Today', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Text(formatDuration(usage.todayUsage), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  // Placeholder line chart box
                  Container(height: 160, color: Colors.grey[900], child: const Center(child: Text('Line Chart Placeholder'))),
                ],
              ),
            ),

            const SizedBox(height: 12),

            UnplugCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Insights', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ListTile(title: const Text('Screen time increased by 12%'), subtitle: const Text('Compared to yesterday')),
                  ListTile(title: const Text('Peak usage: 8-10 PM'), subtitle: const Text('Most active during evening hours')),
                ],
              ),
            ),

            const SizedBox(height: 12),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}