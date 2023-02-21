import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Welcome to Raath Yatri')),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 90.0,
            ),
            Image(image: AssetImage('images/logo.jpg')),
// Expanded(
//     child:Container(
//       child: Image(
//         image: AssetImage('images/logo.jpg'),
//       ),
//       // child: cardChild,
//       // margin: EdgeInsets.all(15.0),
//       // decoration: BoxDecoration(
//       //   color:colour,
//       //   borderRadius: BorderRadius.circular(10.0),
//       // ),
//
//     ),
//  ),
            SizedBox(
              height: 160.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Get Started',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
