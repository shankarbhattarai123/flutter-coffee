
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
      key,
       this.label,
       this.onChange, this.password = false,
  }) : super(key: key);

  final String label;
  final Function onChange;
  final bool password ;

  @override
  Widget build(BuildContext context) {
    return TextField(
        //onChanged: onChange,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          border: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.green,
            width: 2,
          )),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.green,
            width: 2,
          )),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.grey,
            width: 0.5,
          )),
        ));
  }
}