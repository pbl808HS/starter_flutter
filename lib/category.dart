// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _border_Radius = BorderRadius.all(Radius.circular(_rowHeight / 2)); // Radius.circular(50.0)),

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _border_Radius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                        iconLocation,
                        size: 60.0
                    )
                ),
                Center(
                    child: Text(name, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline),
                  //Theme.of(context).textTheme.display1.copyWith(color: Colors.white, fontSize: 24.0, fontFamily: 'Playball', /*fontWeight: FontWeight.w700*/),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}