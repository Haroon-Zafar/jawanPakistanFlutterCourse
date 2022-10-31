import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/app.dart';
import 'package:flutter_application_2/main/login.dart';
import 'package:flutter_application_2/main/register.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // We want that when we press Button 1 Text will show 1 and vice versa.
  // pass this variable in Text $text
  var text = 1;
  // Set State **** Most Important ****
  // if you want to perform any action you use `set State()`

  // I am making two functions for Button 1 and Button 2

  increment() {
    setState(() {
      text = text + 1;
    });
  }

  decrement() {
    setState(() {
      text = text - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // length parameter tells that how much total items you want to show in the tab list. If we write 2 for Login and Signup ( for example )
    // child : Scaffold() beacuse we want to return pages
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // passing the variable name here. For dynamic text
            Text("Text: $text"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: increment, child: Text("Make 1")),
            SizedBox(
              height: 20,
            ),
            // two is the function name. When we press the button we call the function
            ElevatedButton(onPressed: decrement, child: Text("Make 2")),
          ],
        ),
      ),
    );
  }
}

// Widget   (var name) {
//   return Container(
//     color: Colors.yellow,
//     height: 100,
//     child: Row(
//       children: [
//         Container(
//           color: Colors.blue,
//           height: 95,
//           width: 95,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(name),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
