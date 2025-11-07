import 'package:fistproject/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
  // starting point of the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      // primarySwatch: Colors.yellow,
      // scaffoldBackgroundColor: Colors.yellow[800],
      // appBarTheme: AppBarTheme(backgroundColor: Colors.yellow[700]),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Material(
//         child: Center(
//           child: Container(
//             child: Text(
//               'Hello, welcome.. !',
//               textDirection: TextDirection.ltr,
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
