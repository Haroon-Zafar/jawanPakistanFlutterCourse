import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.pink,
                child: Image.network(
                    "data:image/jpeg;base64,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"),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                title: Text("HELLO"),
              ),
            ),
            ListTile(
              title: Text("ABC"),
            ),
            ListTile(
              title: Text("DEF"),
            ),
          ],
        ),
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
