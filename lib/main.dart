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

const _rowHeight = 120.0;
const _name = "Birthdays";
class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          highlightColor: Colors.grey[50],
          splashColor: Colors.grey[100],
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 12.0), child: Icon(Icons.cake, color: Colors.white, size: 22.0)),
                Center(child: Text(
                  _name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display1.copyWith(
                    color: Colors.white,
                    fontSize: 26.0,
                    //fontFamily: 'Lobster',
                    fontWeight: FontWeight.w700
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
