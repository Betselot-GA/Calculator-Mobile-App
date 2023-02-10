import "package:flutter/material.dart";

class CalculateWidget extends StatelessWidget {
  List<Widget> allButtons = [];

  Widget build(context) {
    return Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child:  Container(
          // padding: EdgeInsets.all(50.0),
          child:  buttonGrid(),
          ),
          ),

        );
  }

  Widget button(numbers) {
    return TextButton(
      onPressed: () => {},
      child: Text(
        ("$numbers"),
      ),
    );
  }

  Widget buttonGrid() {
  
    gridView();
    return Row(children: [
      Column(
        children: [
          Row(
            children: [
              Column(
                children: allButtons,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      button('/'),
                      button('x'),
                      button('-'),
                      button('+'),
                      button('='),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    ]);
  }

  gridView() {
    allButtons.add(Row(
      children: [button('AC'), button('%')],
    ));
    List<Widget> buttonRow = [];
    for (var i = 9; i >= 0; i--) {
      if (buttonRow.length != 3) {
        buttonRow.add(button(i));
      } else {
        allButtons.add(
          Row(
            children: buttonRow,
          ),
        );
        buttonRow = [];
        buttonRow.add(button(i));
      }
    }
    allButtons.add(
      Row(
        children: [button(0), button('.')],
      ),
    );
  }
}
