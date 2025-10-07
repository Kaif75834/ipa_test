import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // starting point of the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text(
              'Hello, welcome..!',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First Flutter App')),
//         body: Center(
//           child: Text('Hellloooo! 👋', style: TextStyle(fontSize: 28)),
//         ),
//       ),
//     );
//   }
// }
