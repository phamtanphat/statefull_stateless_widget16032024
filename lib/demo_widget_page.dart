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
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
                Container(width: 140, height: 140, color: Colors.red),
                Container(width: 120, height: 120, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.green),
            ]
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

