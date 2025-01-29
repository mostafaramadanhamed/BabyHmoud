
import 'package:flutter/material.dart';

class BulletPointList extends StatelessWidget {
  final String text;
  const BulletPointList({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // Split the text into sentences
    List<String> points = text.split('.').where((s) => s.trim().isNotEmpty).toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: points.map((point) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: 18)),
              Expanded(child: Text(point.trim(), style: const TextStyle(fontSize: 14))),
            ],
          );
        }).toList(),
      ),
    );
  }
}