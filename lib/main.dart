import 'package:flutter/material.dart';
import 'package:statefull_stateless_widget16032024/demo_widget_page.dart';
import 'package:statefull_stateless_widget16032024/layout_screen_3_page.dart';

import 'demo_stateless_widget_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DemoWidgetPage()
    );
  }
}
