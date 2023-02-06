import "dart:io";

import "package:flutter/material.dart";

class Calculator extends StatefulWidget {
  @override
  createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State<Calculator> {
  var count = 0;

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Calculator"),
            ),
            body: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
               padding: EdgeInsets.all(20.0),

              child: Column(
            children: [
             Container(
              padding: EdgeInsets.all(50.0),
              child:  TextField(
                  autofocus: true,
                  readOnly: true,
                ),
             ),
              buildCalc(count)
            ],
          ),
            ), 

            ),
            );
  }
}

Widget buildCalc(count) {
  return Column(
    children: [
        Row(
        children: [
         Expanded(
          child: TextButton(
           
            onPressed: () => count++,
            child: Text(
              "AC",
              style: TextStyle(fontSize: 30),
            ),
          ), 
          ),
          Expanded(
            child: TextButton(
              onPressed: () => count++,
              child: Text(
                "+/-",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "%",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "/",
              style: TextStyle(fontSize: 30),
            ),
          )),
        ],
      ),
     
       Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "7",
              style: TextStyle(fontSize: 30),
            ),
          )),
             Expanded(child:  TextButton(
            onPressed: () => count++,
            child: Text(
              "8",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "9",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "X",
              style: TextStyle(fontSize: 30),
            ),
          )),
        ],
      ),
       Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "4",
              style: TextStyle(fontSize: 30),
            ),
          )),
            Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "5",
              style: TextStyle(fontSize: 30),
            ),
          ),)  ,
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "6",
              style: TextStyle(fontSize: 30),
            ),
          )),
         Expanded(child:  TextButton(
            onPressed: () => count++,
            child: Text(
              "-",
              style: TextStyle(fontSize: 30),
            ),
          )),
        ],
      ),
      Row(
        children: [
         Expanded(child:  TextButton(
            onPressed: () => count++,
            child: Text(
              "1",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ),
             Expanded(child:  TextButton(
            onPressed: () => count++,
            child: Text(
              "2",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "3",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ),
          
        ],
      ),
        Row(
        children: [
          Expanded(
            flex: 2,
            child: TextButton(
            onPressed: () => count++,
            // ignore: prefer_const_constructors
            child: Text(
              "0",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 30,                
                ),
                textAlign: TextAlign.left,
            ),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              ".",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: () => count++,
            child: Text(
              "=",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ),
        ],
      ),
     
    ],
  );
}
