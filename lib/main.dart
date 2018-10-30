// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HelloFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.deepOrange,
          child: Center(
            child: MyListTile()
          )
    );
  }
}

const _rowHeight = 260.0;
const _name = "Happy Birthday my Friend!";
class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          //borderRadius: _borderRadius,
          highlightColor: Color(50),
          splashColor: Color(100),
          onTap: () {
            print('Thank you!');
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 16.0, bottom: 16.0), child: Icon(Icons.cake, color: Colors.white, size: 72.0)),
                Center(child: Text(
                  _name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display1.copyWith(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: 'Lobster'
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      //appBar: AppBar(
      //  title: Text('Hello Friend!'),
      //  backgroundColor: Colors.deepOrangeAccent
      //),
      body: HelloFriend(),
    ),
  ));
}
