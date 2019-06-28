// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'category.dart';
import './settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
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
