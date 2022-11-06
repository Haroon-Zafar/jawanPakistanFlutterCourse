import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Making a list type object which is passed to the ListView.builder
  var lst = ["Ahmed", "Haroon", "Zain", "Areeb"];
  // Making a list type object for Age.
  var age = ["22", "23", "24", "25"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Requires a List of Items.
        itemCount: lst.length,
        // In context we are getting the context of the data.
        // Index is a loop which gets index of every item in each iteration.
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              // inddex = 0   ;   lst[0] = Ahmed ; so text will be Ahmed in Title.
              lst[index],
            ),
            subtitle: Text(
              age[index],
            ),
          );
        },
      ),
    );
  }
}

// Returning a Widget with Dynamic Values.

Widget customWidget(var name) {
  return Container(
    color: Colors.pink,
    height: 100,
    child: Row(
      children: [
        Container(
          color: Colors.purple,
          height: 95,
          width: 95,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ABC1"),
              Row(
                children: [
                  Text(name),
                ],
              ),
              // Addding Icon.
              Icon(Icons.android),
              Text(name),
            ],
          ),
        ),
      ],
    ),
  );
}
