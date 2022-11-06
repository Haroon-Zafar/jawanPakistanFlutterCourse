import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Making a list type object with links of images which is passed to the ListView.builder
  var lst = [
    "https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg",
    "https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg",
    "https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg",
    "https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Requires a List of Items.
        itemCount: lst.length,
        // In context we are getting the context of the data.
        // Index is a loop which gets index of every item in each iteration.
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            child: Image.network(
              lst[index],
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
