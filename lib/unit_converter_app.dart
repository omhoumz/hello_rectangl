import 'package:flutter/material.dart';

import 'package:hello_rectangl/category_route.dart';
import 'package:hello_rectangl/settings.dart';

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: CategoryRoute(),
    );
  }
}
