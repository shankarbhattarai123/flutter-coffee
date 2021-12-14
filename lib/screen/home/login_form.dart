import './input_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
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
            label: 'Password',
            password: true,
            onChange: (value) {}, 
          ),
        ],
      ),
    );
  }
}

// class InputTextField extends StatelessWidget {
//   const InputTextField({
//       Key key,
//       this.label,
//       this.onChange, this.password = false,
//   }) : super(key: key);

//   final String label;
//   final Function onChange;
//   final bool password ;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//         onChanged: onChange,
        

//         cursorColor: Colors.grey,
//         decoration: InputDecoration(
//           labelText: label,
//           labelStyle: TextStyle(color: Colors.grey),
//           border: UnderlineInputBorder(
//               borderSide: BorderSide(
//             color: mPrimaryColor,
//             width: 2,
//           )),
//           focusedBorder: UnderlineInputBorder(
//               borderSide: BorderSide(
//             color: mPrimaryColor,
//             width: 2,
//           )),
//           enabledBorder: UnderlineInputBorder(
//               borderSide: BorderSide(
//             color: Colors.grey,
//             width: 0.5,
//           )),
//         ));
//   }
// } 