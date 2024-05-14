import 'dart:math';

import 'package:flutter/material.dart';

class DemoStateFullWidgetPage extends StatefulWidget {
  const DemoStateFullWidgetPage({super.key});

  @override
  State<DemoStateFullWidgetPage> createState() => _DemoStateFullWidgetPageState();
}

// State<Object>
class _DemoStateFullWidgetPageState extends State<DemoStateFullWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo StateFull Widget"),
      ),
      body: Container(),
    );
  }
}
