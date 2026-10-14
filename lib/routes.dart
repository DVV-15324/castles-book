/// Map route name → builder. File này do castles tự cập nhật.
library;

import 'package:flutter/material.dart';
import 'modules/book/book_module.dart';

final Map<String, WidgetBuilder> appRoutes = <String, WidgetBuilder>{
  '/book': (context) => const BookModule(),
};