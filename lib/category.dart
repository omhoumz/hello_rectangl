// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

import 'package:hello_rectangl/converter_route.dart';
import 'package:hello_rectangl/unit.dart';

EdgeInsets _rowPadding = EdgeInsets.all(8.0);
double _rowHeight = 100.0;
BorderRadius _borderRadius = BorderRadius.all(Radius.circular(_rowHeight / 2));
double _iconSize = 35.0;
double _textSize = 28.0;

class Category extends StatelessWidget {
  final String name;
  final Color color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(units != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (BuildContext context) {
        final appBar = AppBar(
          title: Text(
            name,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: color,
        );

        return Scaffold(
          appBar: appBar,
          body: ConverterRoute(
            categoryName: name,
            categoryColor: color,
            units: units,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            _navigateToConverter(context);
          },
          child: Padding(
            padding: _rowPadding,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, 24.0, 8.0),
                  child: Opacity(
                    opacity: 0.7,
                    child: Icon(
                      iconLocation,
                      size: _iconSize,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: _textSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
