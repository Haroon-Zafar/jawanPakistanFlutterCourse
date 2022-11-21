import 'package:flutter/material.dart';
import 'package:jawan_pakistan_flutter_course/login.dart';
import 'package:jawan_pakistan_flutter_course/register.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Making a list type object with links of images which is passed to the ListView.builder
  var lst = [
    "Ali",
    "Hassan",
    "Hussein",
    "Zain",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Text: "),
          ElevatedButton(
            onPressed: () {},
            child: Text("Make 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Make 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Make 3"),
          ),
        ],
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
