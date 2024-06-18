import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
      body: DemoStack()
    );
  }
}

class DemoStack extends StatelessWidget {
  const DemoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all()
          ),
          width: 300,
          height: 300,
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                  Positioned(
                    bottom: -50,
                    child: Container(
                        color: Colors.red,
                        width: 150,
                        height: 150,
                    ),
                  ),
              ]
            ),
          ),
        )
      ),
    );
  }
}


class DemoColumAndRow extends StatelessWidget {
  const DemoColumAndRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

