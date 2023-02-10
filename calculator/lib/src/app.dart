import "package:calculator/widgets/calculate_widget.dart";
import "package:calculator/widgets/textfield_widget.dart";
import "package:flutter/material.dart";

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Calculator"),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.amber),
          child: Column(
            children: [TextfieldWidget(), CalculateWidget()],
          ),
        ),
      ),
    );
  }
}
