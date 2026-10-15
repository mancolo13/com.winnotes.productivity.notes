import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final folders = [
      {'name': '💼 Projects & Engineering', 'count': '18 notes'},
      {'name': '💡 Ideas & Startups', 'count': '12 notes'},
      {'name': '👤 Personal & Wellness', 'count': '9 notes'},
      {'name': '💰 Financial Planning', 'count': '6 notes'},
      {'name': '📚 Learning & Study Notes', 'count': '15 notes'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Folders'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Folders & Notebooks', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...folders.map((f) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      f['name']!,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    f['count']!,
                    style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
