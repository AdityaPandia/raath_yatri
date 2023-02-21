import 'package:flutter/material.dart';
import 'package:raath_yatri/homescreen.dart';
import 'package:raath_yatri/startscreen.dart';
import 'package:raath_yatri/loginscreen.dart';
import 'signupscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/':(context)=> StartScreen(),
        '/login': (context)=> LogInScreen(),
        '/signup':(context)=>SignUpScreen(),
        '/home':(context)=>HomeScreen(),
      },

      // theme: ThemeData.light(),
      //   Theme(
      //     // Find and extend the parent theme using `copyWith`. See the next
      //     // section for more info on `Theme.of`.
      //     data: Theme.of(context).copyWith(splashColor: Colors.yellow),
      //     child: const FloatingActionButton(
      //       onPressed: null,
      //       child: Icon(Icons.add),
      //     ),
      //   );

    );
  }
}
