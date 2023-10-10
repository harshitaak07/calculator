import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void todoAddition(){
    setState(() {
      var num1 = int.parse(t1.text);
      var num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

   void todoSubtraction(){
    setState(() {
      var num1 = int.parse(t1.text);
      var num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

   void todoMultiplication(){
    setState(() {
      var num1 = int.parse(t1.text);
      var num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

   void todoDivision(){
    setState(() {
      var num1 = int.parse(t1.text);
      var num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

   // ignore: non_constant_identifier_names
   void Clear(){
    setState(() {
     t1.text = '0';
     t2.text ='0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Calculator app"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.purple,
              ),
            ),
            const Padding(padding: EdgeInsets.all(4.0)),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter the number'),
              controller: t1,
            ),
            const Padding(padding: EdgeInsets.all(3.0)),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter the number'),
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.pinkAccent,
                  onPressed: todoAddition,
                  child: const Text('+')),
                MaterialButton(
                  color: Colors.pinkAccent,
                  onPressed: todoSubtraction,
                  child: const Text('-')),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(4.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.pinkAccent,
                  onPressed: todoMultiplication,
                  child: const Text('*')),
                MaterialButton(
                  color: Colors.pinkAccent,
                  onPressed: todoDivision,
                  child: const Text('/')),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(4.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.pink,
                  onPressed: Clear,
                  child: const Text('Clear'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
