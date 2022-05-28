import 'package:flutter/material.dart';

Widget DefaultBottom(
        {required Color backgraund,
        required Function function,
        required String text}) =>
    Container(
      width: double.infinity,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: backgraund,
      ),
    );
Widget TextFormF({
  required TextEditingController controller,
  TextInputType? type,
  Function? onSubmit,
  Function? onChanged,
  bool isPass = false,
  required Function valdata,
  required String lebel,
  required IconData prefixIcon,
  IconData? suffixIcon, 
}) =>
    TextFormField(
      validator: valdata(),
      controller: controller,
      keyboardType: type,
      obscureText: isPass,
      onFieldSubmitted: onSubmit!(),
      onChanged: onChanged!(),
      decoration: InputDecoration(
        labelText: lebel,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(
          suffixIcon,
        ),
        border: OutlineInputBorder(),
      ),
    );
