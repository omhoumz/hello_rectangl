import 'package:flutter/material.dart';

import 'package:hello_rectangl/settings.dart';
import 'package:hello_rectangl/category.dart';
import 'package:hello_rectangl/unit.dart';

final _bgColor = Colors.orange[100];
final _appBarTitleColor = Colors.blue[800];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

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
      child: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: _categoryNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Category(
            color: _baseColors[index],
            iconLocation: Icons.check_circle,
            name: _categoryNames[index],
            units: _retrieveUnitList(_categoryNames[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Padding(padding: EdgeInsets.all(4.0)),
      ),
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
