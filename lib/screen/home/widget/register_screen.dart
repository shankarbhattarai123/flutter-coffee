import '/constant.dart';
import '/screen/home/input_text_field.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
       
       
       
        child: Column(
          children: <Widget>[
            InputTextField(
              label: 'Email',
              onChange: (value) {},
            ),
            SizedBox(
              height: 16,
            ),
            InputTextField(
              label: 'User Name',
              password: true,
              onChange: (value) {},
            ),
            SizedBox(
              height: 16,
            ),
            InputTextField(
              label: 'Password',
              password: true,
              onChange: (value) {},
            ),
            SizedBox(
              height: 16,
            ),
            InputTextField(
              label: 'Confirm Password',
              password: true,
              onChange: (value) {},
            ),
        
           SizedBox(
              height: 35,
            ),
            Container(
               width: double.infinity,
    
          padding: const EdgeInsets.symmetric(vertical: 16),
    
          alignment: Alignment.center,
    
              // height: 50,
              // width: 250,
              decoration: BoxDecoration(
                  color: Colors.green, 
                  
                  borderRadius: BorderRadius.circular(36)),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => RegisterScreen()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, ),
                ),
              ),
            ),
    
      
    
    

Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: 'Already have an account?'),
                  TextSpan(
                      text: '  Log In',
                      style: TextStyle(
                        color: mPrimaryColor,
                      ),

                   )
                 
  ]) ))])));
}

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Sign Up',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("Login Page"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Center(
//                 child: Container(
//                     width: 200,
//                     height: 150,
//                     /*decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50.0)),*/
//                     child: Image.asset('asset/images/flutter-logo.png')),
//               ),
//             ),
//             Padding(
//               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Email',
//                     hintText: 'Enter valid email id as abc@gmail.com'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               //padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                     hintText: 'Enter secure password'),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
// ignore: todo
//                 //TODO FORGOT PASSWORD SCREEN GOES HERE
//               },
//               child: Text(
//                 'Forgot Password',
//                 style: TextStyle(color: Colors.blue, fontSize: 15),
//               ),
//             ),
//             Container(
//               height: 50,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//               child: FlatButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => HomeScreen()));
//                 },
//                 child: Text(
//                   'Login',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 130,
//             ),
//             Text('New User? Create Account')
//           ],
//         ),
//       ),
//     );
//   }

}
