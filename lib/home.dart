import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
                          Text("ABC2"),
                          Text("ABC2"),
                          Text("ABC2"),
                        ],
                      ),
                      // Addding Icon.
                      Icon(Icons.android),
                      Text("ABC3"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Returning a Widget with Dynamic Values.

Widget customWidget() {
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
                  Text("ABC2"),
                  Text("ABC2"),
                  Text("ABC2"),
                ],
              ),
              // Addding Icon.
              Icon(Icons.android),
              Text("ABC3"),
            ],
          ),
        ),
      ],
    ),
  );
}
