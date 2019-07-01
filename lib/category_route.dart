import 'package:flutter/material.dart';

import 'package:unit_converter/settings.dart';
import 'package:unit_converter/category.dart';
import 'package:unit_converter/unit.dart';

final _bgColor = Colors.orange[100];
final _appBarTitleColor = Colors.blue[800];

class CategoryRoute extends StatefulWidget {
  const CategoryRoute();

  @override
  _CategoryRouteState createState() => _CategoryRouteState();
}

class _CategoryRouteState extends State<CategoryRoute> {
  final _categories = <Category>[];

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }
  }

  Widget _buildCategoryWidgets() {
    return ListView.separated(
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index) => _categories[index],
      separatorBuilder: (BuildContext context, int index) =>
          const Padding(padding: EdgeInsets.all(4.0)),
    );
  }

  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(
      child: _buildCategoryWidgets(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
    );

    final appBar = AppBar(
      title: Text(
        appName,
        style: TextStyle(
          fontSize: 30.0,
          color: _appBarTitleColor,
          fontWeight: FontWeight.w300,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: _bgColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
      backgroundColor: _bgColor,
    );
  }
}
