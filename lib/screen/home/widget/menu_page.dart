import '/constant.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage();

  @override
  _State createState() => _State();
}

class _State extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.teal.shade50,
        body: Container(
          child: Stack(children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    color: Colors.teal.shade50,
                  ),
                ),
                Container(
                    height: size.height,
                    width: 100.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.greenAccent.withOpacity(0.15),
                        Colors.lightGreen.withOpacity(0.15),
                      ]),
                    ),
                    ),
              ],
            ),
      Column(
        children: [
          Padding(
          padding: const EdgeInsets.only(
            top: 64.0,
            bottom: 0.0,
            left: 28.0,
            right: 28.0,
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
             Image.asset(
               "assets/icons/menu.png", 
               height: 32.0,
              ),
                Container(
                  height: 40.0,
                  width: 40.0,
                padding: EdgeInsets.all(12.0),  
                
                 decoration: BoxDecoration(
                   color: Colors.brown,
                 
                  borderRadius: BorderRadius.circular(24.0),
                 ),
                  child: Image.asset(
               "assets/icons/notification.png", 
               height: 32.0,
              ),
                ),
                ],
                ),
          SizedBox(height: 28.0,),
          Text(
            "Enjoy",
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.blueGrey,
              fontFamily: "amanda_signature",
              ),
            ),
              Text(
                "Coffee Cafe",
                 style: TextStyle(
              fontSize: 52.0,
              color: Colors.brown,
              fontFamily: "landasans",
              ),
                ),
               Text(
                 "Your goto place for the world\'s best coffee ",
                  style: TextStyle(
              fontSize: 20.0,
              color: Colors.brown,
              fontFamily: "landasans",
              letterSpacing: 1.0,
              ),
                 ),
                
             ]
             ),
              ),
        Row(
          children: [
            Container(
              height: 52.0,
              width: 84.0,
               padding: EdgeInsets.symmetric(
                 horizontal: 24.0,
                 vertical: 15.0,
              ),
              margin: EdgeInsets.only(right: 24.0),
              alignment: Alignment.centerRight,
               decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                  kSearch1BGColor,
                  kSearchBGColor,
                 ]
                 ),
               
               ),
              child: Image.asset(
                "assets/icons/search.jpg",

                ),
                ),
          Expanded(
            child: Container(
              height: 52.0,
              width: size.width,
              color: Colors.teal,
           ),
          )
          ],
        )

          ], 
           ),
      ],
      ),
      ),
          
        );
        
  }
}
