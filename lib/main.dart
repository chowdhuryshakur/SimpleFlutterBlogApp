import 'package:flutter/material.dart';
import 'package:simple_blog_app/views/BlogList.dart';
import 'package:simple_blog_app/views/blogDetailPage.dart';
import 'package:simple_blog_app/views/splashScreen.dart';

var routes = <String, WidgetBuilder>{
  "/layout": (BuildContext context) => BlogList(),
  "/detail": (BuildContext context) => BlogDetailPage(),
};

void main() => runApp(new MaterialApp(
    title: 'Blog app',
    theme: ThemeData(
      primarySwatch: Colors.red,
      accentColor: Colors.yellowAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: SplashScreen(),
    routes: routes));
