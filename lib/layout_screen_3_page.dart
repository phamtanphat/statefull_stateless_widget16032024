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
        decoration: BoxDecoration(border: Border.all(width: 2)),
        child: Column(
          children: [
            Expanded(flex: 2,
                child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border(
                                    right: BorderSide(width: 2),
                                    bottom: BorderSide(width: 2)
                                  )
                                ),
                                child: const Center(
                                    child: Text("1", style: TextStyle(color: Colors.white)
                                    )
                                )
                            )
                        ),
                        Expanded(flex: 6,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    border: Border(
                                        bottom: BorderSide(width: 2)
                                    )
                                ),
                                child: const Center(
                                  child: Text("2", style: TextStyle(color: Colors.white)
                                  )
                                )
                            )
                        )
                      ]
                    )
                )
            ),
            Expanded(flex: 5, child: Container(color: Colors.green)),
            Expanded(flex: 3, child: Container(color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
