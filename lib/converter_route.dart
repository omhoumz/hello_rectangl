import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:unit_converter/unit.dart';

class ConverterRoute extends StatefulWidget {
  final List<Unit> units;
  final String categoryName;
  final Color categoryColor;

  const ConverterRoute({
    @required this.units,
    @required this.categoryName,
    @required this.categoryColor,
  })  : assert(units != null),
        assert(categoryColor != null),
        assert(categoryColor != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: widget.categoryColor,
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
