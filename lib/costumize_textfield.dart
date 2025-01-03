import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CosumizedTextfield extends StatefulWidget{
  final HugeIcon? icon;
  final String hintText;
  final TextInputType keyboardType;
 final bool isPassword;


  CosumizedTextfield({ this.icon,required this.hintText,required this.keyboardType,this.isPassword=false});

  @override
  State<CosumizedTextfield> createState() => _CosumizedTextfieldState();
}

class _CosumizedTextfieldState extends State<CosumizedTextfield> {
  bool isObscured= true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:widget.isPassword ? isObscured : false,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(

        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          color: Color.fromRGBO(171, 171, 171, 1),
        ),
        prefixIcon: widget.icon,

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF1ECEC)),borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffABABAB)),borderRadius: BorderRadius.circular(15)),

        suffixIcon: widget.isPassword
      ? IconButton(
      icon: HugeIcon(
        icon: isObscured
        ? HugeIcons.strokeRoundedViewOff
            : HugeIcons.strokeRoundedView,
          color: Color(0xffABABAB)
      ),
      onPressed: () {
        setState(() {
          isObscured = !isObscured;
        });
      },
    )
        : null,


      ),

    );
  }
}