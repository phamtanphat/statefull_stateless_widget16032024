import 'package:flutter/material.dart';

class DemoWidgetPage extends StatefulWidget {
  const DemoWidgetPage({super.key});

  @override
  State<DemoWidgetPage> createState() => _DemoWidgetPageState();
}

class _DemoWidgetPageState extends State<DemoWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo widget"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(flex: 3,child: Container(color: Colors.red)),
            Expanded(flex: 1,child: Container(color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
