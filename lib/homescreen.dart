import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:raath_yatri/Components/reusable_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [1, 2].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image(image: AssetImage('images/slider$i.jpg'));
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Colors.redAccent,
                  cardChild: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () {
                          //Implement login functionality.
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text(
                          'GYM PACKAGE',
                        ),
                      ),
                    ),
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Colors.redAccent,
                  cardChild: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () {
                          //Implement login functionality.
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text(
                          'TRAVEL PACKAGE',
                        ),
                      ),
                    ),
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            onChanged: (value) {
              //Do something with the user input.
            },
            decoration: InputDecoration(
              hintText: 'Where do you wanna go??',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
