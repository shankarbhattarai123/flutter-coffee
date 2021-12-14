import '/constant.dart';
import 'slider_dot.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Menu extends StatefulWidget {
  int currentIndex = 0;
  Menu(this.currentIndex);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Widget> children = [
    HomeScreen(),
    emptyScreen("assets/icons/heart.jpg", "Favorite"),
    emptyScreen("assets/icons/cart.png", "Cart"),
    emptyScreen("assets/icons/profile.png", "Profile"),
    emptyScreen("assets/icons/search.jpg", "Search"),
  ];

  setBottomIndex(index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown[100],
      bottomNavigationBar: Stack(
        //  alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 116.0,
            width: size.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: size.height,
                  width: 100.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        kSearchBGColor.withOpacity(0.15),
                        kSearch1BGColor.withOpacity(0.15),
                      ],
                    ),
                  ),
                  
                )
              ],
            ),
          ),
          Container(
            height: 84.0,
            width: size.width,
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kBottomBorder2Color,
                  kBottomBorder1Color,
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(42.0),
                bottomRight: Radius.circular(42.0),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.5),
                  topRight: Radius.circular(12.5),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  tabs(0, "assets/icons/home.png",),
                  tabs(1, "assets/icons/heart.jpg"),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  tabs(2, "assets/icons/cart.png"),
                  tabs(3, "assets/icons/profile.png"),
                ],
              ),
            ),
          ),
          Center(
            heightFactor: 0.8,
            child: Container(
              height: 64.0,
              width: 64.0,
              child: FloatingActionButton(
                onPressed: () => setBottomIndex(4),
                backgroundColor: Colors.brown,
                child: Image.asset(
                  "assets/icons/search.jpg",
                  height: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height,
              width: size.width,
            ),
          ),
        ],
      ),
    );
  }
}

// // ignore: camel_case_types
// class tabs extends StatelessWidget {
//   const tabs({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       "assests/icons/home.png",
//       color: Colors.yellow,
//       height: 20.0,
//     );
//   }
// }

Widget tabs(int index, String icon) {
  return GestureDetector(
    onTap: () => setBottomIndex(index),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            var widget;
            return LinearGradient(
              colors: <Color>[
                widget.currentIndex == index
                    ? Colors.brown
                    : Colors.brown.withOpacity(0.32),
                widget.currentIndex == index
                    ? Colors.lightBlue
                    : Colors.lightBlue.withOpacity(0.32),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          child: Image.asset(
            icon,
            color: Colors.brown,
            height: 20.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 8.0,
          width: 14.0,
          // color: Colors.yellow,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(48.0),
          ),
        )
      ],
    ),
  );
}

setBottomIndex(int index) {}

Widget emptyScreen(String image, String title) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
            shaderCallback: (Rect bounds) {
             
              
              return LinearGradient(
                colors: <Color>[
                  
                       Colors.brown,
                      
                  
                       Colors.lightBlue,
                     
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            child: Image.asset(
            image,
             
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
     Text(title, style: TextStyle(
       fontSize: 20.0, 
       color: Colors.brown,
       fontWeight: FontWeight.bold,
       ),
     ),
        //   Container(
        //     height: 8.0,
        //     width: 14.0,
        //     // color: Colors.yellow,
        //     decoration: BoxDecoration(
        //       color: Colors.brown,
        //       borderRadius: BorderRadius.circular(48.0),
        //     ),
        //   )
        
        ],
      
    

      
    ),
  );
}
