import 'package:flutter/material.dart';

import 'api/api.dart';
import 'components/components.dart';
import 'layouts/layouts.dart';

/// Module book.
class BookModule extends StatelessWidget {
  const BookModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('book')),
      body: const Center(
        child: Text('book module'),
      ),
    );
  }
}