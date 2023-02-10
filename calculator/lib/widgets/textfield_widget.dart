import "package:flutter/material.dart";

class TextfieldWidget extends StatefulWidget {
  createState() => TextfieldState();
}

class TextfieldState extends State<TextfieldWidget> {
  Widget build(context) {
    return TextField(
      readOnly: true,
    );
  }
}
