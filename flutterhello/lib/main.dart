// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'login_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,  
    title: 'flutter',
    theme: ThemeData(
    ),
    home: MyHomePage(title:'主页'),
    routes: {
      'LoginPage': (context) => LoginPage(),
    },
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demo'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  navigateTo('LoginPage');
                },
                child: Text('登录页面'),
              )
            ],
          )),

        ),
        
      ),
   );
  }
  
  navigateTo(name) {
    Navigator.of(context).pushNamed(name);
  }
}
