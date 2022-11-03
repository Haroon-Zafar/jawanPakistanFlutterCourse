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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
