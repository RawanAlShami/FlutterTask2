import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'contact_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color C = Color.fromARGB(255,35,39,42);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: C,
          body:Container(
            padding: EdgeInsets.only(top:30.0,left:10.0,right:10.0),
            child:Column(
              children: [
                ContactCard(
                  name: 'Blue Ghost',
                  email: '  Blue_Ghost@gmail.com',
                  phone: '  +18143008187',
                  status: 'The Boss',
                  url: 'https://banner2.kisspng.com/20180214/xew/kisspng-pac-man-games-ghosts-blue-ghost-cliparts-5a8481acad2b23.0337823915186333887093.jpg',
                ),
                ContactCard(
                  name:'Pink Ghost',
                  email:'  Pink_Ghost@gmail.com',
                  phone: '  +14155550132',
                  status: 'Boss',
                  url: 'https://banner2.cleanpng.com/20180317/ljq/kisspng-pac-man-adventures-in-time-pac-mania-pac-man-game-pink-ghost-cliparts-5aacb8e0d42bc2.0158906515212689608691.jpg',
                ),
                ContactCard(
                  name:'Red Ghost',
                  email:'  Red_Ghost@gmail.com',
                  phone:'  +15417543010',
                  status:'Not Boss',
                  url:'https://mpng.subpng.com/20180613/uwc/kisspng-ms-pac-man-pac-man-world-3-ghosts-packman-5b21c2dd6b5d65.5866883815289392294398.jpg',
                  //url:'https://clipartart.com/images/pacman-ghost-clipart-5.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}