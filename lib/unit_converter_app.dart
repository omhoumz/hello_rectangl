import 'package:flutter/material.dart';

import 'package:unit_converter/category_route.dart';
import 'package:unit_converter/settings.dart';

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
