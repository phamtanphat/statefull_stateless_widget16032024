import 'package:flutter/material.dart';

class LayoutScreen3Page extends StatefulWidget {
  const LayoutScreen3Page({super.key});

  @override
  State<LayoutScreen3Page> createState() => _LayoutScreen3PageState();
}

class _LayoutScreen3PageState extends State<LayoutScreen3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai tap 3"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          border: Border.all(width: 2)
        ),
        child: Column(
          children: [
            Expanded(flex: 2, child: Container(color: Colors.red)),
            Expanded(flex: 5, child: Container(color: Colors.green)),
            Expanded(flex: 3, child: Container(color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
