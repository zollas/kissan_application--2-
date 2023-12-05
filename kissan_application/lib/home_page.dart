import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'current_location.dart';
import 'form_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/environmental-protection-326923.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Protect Earth, Preserve Life',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width > 600
                          ? // Check for screen size
                          30
                          : 22.0,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                // button()
                SizedBox(
                  height: 300,
                ),
                // Spacer(),
                Align(alignment: Alignment.center, child: button()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: InkWell(
//         onTap: () {
//           // Add your button click logic here
//           print('Button Clicked!');
//         },
//         onHover: (isHovered) {
//           setState(() {
//             _isHovered = isHovered;
//           });
//         },
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 300),
//           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.blue),
//             borderRadius: BorderRadius.circular(5.0),
//             color: _isHovered ? Colors.blue : Colors.transparent,
//           ),
//           child: Text(
//             'Click me',
//             style: TextStyle(
//               color: _isHovered ? Colors.white : Colors.blue,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

class button extends StatefulWidget {
  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FormPage()),
        );
        // Add your button click logic here
        print('Button Clicked!');
      },
      onHover: (isHovered) {
        setState(() {
          _isHovered = isHovered;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(5.0),
            gradient: _isHovered
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.green],
                  )
                : LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.green,
                      Colors.blue,
                    ],
                  )
            // gradient:
            // color: _isHovered ? Colors.blue : Colors.transparent,
            ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Plant a tree and get free KSN Token',
            style: TextStyle(
              color: _isHovered ? Colors.white : Colors.white,
              fontSize: _isHovered ? 18.0 : 16.0, // Increase font size on hover
            ),
          ),
        ),
      ),
    );
  }
}
