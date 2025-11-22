import 'package:flutter/material.dart';

class UnplugCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  const UnplugCard({Key? key, required this.child, this.padding = const EdgeInsets.all(12)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String delta; // "+15%" or "-8%"
  final Color? deltaColor;
  const ActivityTile({Key? key, required this.icon, required this.title, required this.subtitle, required this.delta, this.deltaColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(icon, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ],
            ),
          ),
          Text(delta, style: TextStyle(color: deltaColor ?? Colors.grey[300], fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class FriendRow extends StatelessWidget {
  final String name;
  final String time;
  final String pickups;
  final String delta;
  final Color deltaColor;
  const FriendRow({Key? key, required this.name, required this.time, required this.pickups, required this.delta, required this.deltaColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(name[0])),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text('$pickups pickups • $time'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(deltaColor == Colors.green ? Icons.arrow_upward : Icons.arrow_downward, color: deltaColor, size: 16),
          Text(delta, style: TextStyle(color: deltaColor, fontWeight: FontWeight.bold, fontSize: 12)),
        ],
      ),
    );
  }
}

class GoalProgressBar extends StatelessWidget {
  final double progress; // 0.0 - 1.0
  const GoalProgressBar({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 10,
            backgroundColor: Colors.grey[800],
            valueColor: AlwaysStoppedAnimation(Theme.of(context).colorScheme.secondary),
          ),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('0h', style: TextStyle(color: Colors.grey[500], fontSize: 12)),
            Text('8h daily goal', style: TextStyle(color: Colors.grey[500], fontSize: 12)),
          ],
        ),
      ],
    );
  }
}