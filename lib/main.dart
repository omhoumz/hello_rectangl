// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hello_rectangl/unit_converter_app.dart';

import 'category.dart';

void main() {
  runApp(UnitConverterApp());
}

const _categoryName = 'Check Here';
const _categoryIcon = Icons.check_circle;
const _categoryColor = Colors.indigo;

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.indigo[50],
        height: 400.0,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.greenAccent,
              height: 120.0,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 40.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Category(
              name: _categoryName,
              color: _categoryColor[200],
              iconLocation: _categoryIcon,
            ),
          ],
        ),
      ),
    );
  }
}
