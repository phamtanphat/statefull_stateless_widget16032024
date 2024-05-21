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
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(color: Colors.red, child: Text("A"))),
                      Expanded(
                          child: Container(color: Colors.blue, child: Text("B"))),
                      Expanded(
                          child: Container(color: Colors.green, child: Text("C"))),
                      Expanded(
                          child: Container(color: Colors.orange, child: Text("D"))),
                    ])
              ),
              Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(color: Colors.red, child: Text("A"))),
                      Expanded(
                          child: Container(color: Colors.blue, child: Text("B"))),
                      Expanded(
                          child: Container(color: Colors.green, child: Text("C"))),
                      Expanded(
                          child: Container(color: Colors.orange, child: Text("D"))),
                    ])
              )
            ])
      )
    );
  }
}
