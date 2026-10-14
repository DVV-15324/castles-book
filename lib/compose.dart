import 'package:flutter/material.dart';

import 'routes.dart';

/// Điểm vào chính của app castles_book.
class Compose extends StatelessWidget {
  const Compose({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'castles_book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const _Home(),
        ...appRoutes,
      },
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('castles_book')),
      body: appRoutes.isEmpty
          ? const Center(
              child: Text(
                'Chưa có module nào.\n'
                'Chạy `castles add module <tên>` để bắt đầu.',
                textAlign: TextAlign.center,
              ),
            )
          : ListView(
              children: appRoutes.keys.map((route) {
                return ListTile(
                  leading: const Icon(Icons.extension),
                  title: Text(route),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(context, route),
                );
              }).toList(),
            ),
    );
  }
}