import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = [
      {'title': 'Mobile Product Launch Blueprint', 'desc': '1. Release AAB production builds to Google Play\n2. Prepare device screenshots', 'tag': '#work'},
      {'title': 'Weekend Grocery Checklist', 'desc': 'Olive oil, quinoa, fresh blueberries, whey protein', 'tag': '#personal'},
      {'title': 'Highlights from "Thinking, Fast and Slow"', 'desc': 'System 1 operates automatically and quickly, with little effort...', 'tag': '#books'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Notes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.white54),
                  SizedBox(width: 12),
                  Expanded(child: Text('Search notes & tags...', style: TextStyle(color: Colors.white54, fontSize: 14), overflow: TextOverflow.ellipsis)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('All Notes', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...notes.map((n) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          n['title']!,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          n['tag']!,
                          style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(n['desc']!, style: const TextStyle(color: Colors.white70, fontSize: 13, height: 1.3)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
