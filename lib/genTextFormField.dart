import 'package:flutter/material.dart';

class getTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? hintName;
  IconData? iconData;
  bool is0bsureText;
  TextInputType inputType;

  getTextFormField(
      {this.controller, this.hintName, this.iconData, this.is0bsureText=false, this.inputType= TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controller,
          obscureText: is0bsureText,
          keyboardType: inputType,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
            prefixIcon: Icon(iconData),
            hintText: hintName,
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ));
  }
}
