import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = [
      {'title': 'План запуска мобильного продукта', 'desc': '1. Релиз билдов AAB в Google Play\n2. Подготовка скриншотов устройств', 'tag': '#работа'},
      {'title': 'Список покупок на выходные', 'desc': 'Оливковое масло, киноа, свежие ягоды, протеин', 'tag': '#личное'},
      {'title': 'Цитаты из книги "Думай медленно"', 'desc': 'Система 1 работает автоматически и быстро, с малым усилием...', 'tag': '#книги'},
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
                  Text('Поиск по заметкам и тегам...', style: TextStyle(color: Colors.white54, fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Все заметки', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...notes.map((n) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(n['title']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                      Text(n['tag']!, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
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
