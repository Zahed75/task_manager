import 'package:flutter/material.dart';

const colorRed=Color.fromRGBD(231,28,36,1);
const colorDark=Color.fromRGBD(136,28,32,1);
const colorGreen=Color.fromRGBD(33,191,115,1);
const colorBlue=Color.fromRGBD(52,152,219,1.0);
const colorOrange=Color.fromRGBD(230,126,34,1.0);
const colorDarkBlue=Color.fromRGBD(44,62,80,1.0);
const colorLightGray=Color.fromRGBD(135,142,150,1.0)
const colorLight=Color.fromRGBD(211,211,211,1.0)

// Text Style
TextStyle HeadText(textColor){
  return TextStyle(
    color:textColor,
    fontSize:28,
    fontFamily:'poppins',
    fontWeight:FontWeight.w700
  );
}

TextStyle Head6Text(textColor){
  return TextStyle(
    color:textColor,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

// Text Decoration


InputDecoration AppInputDecoration(label){
  return InputDecoration(
    
  )
}