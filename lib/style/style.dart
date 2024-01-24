import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



const colorRed=Color.fromRGBO(231,28,36,1);
const colorDark=Color.fromRGBO(136,28,32,1);
const colorGreen=Color.fromRGBO(33,191,115,1);
const colorBlue=Color.fromRGBO(52,152,219,1.0);
const colorOrange=Color.fromRGBO(230,126,34,1.0);
const colorDarkBlue=Color.fromRGBO(44,62,80,1.0);
const colorLightGray=Color.fromRGBO(135,142,150,1.0)
const colorLight=Color.fromRGBO(211,211,211,1.0)

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


//Input Decoration
InputDecoration AppInputDecoration(label){
 
  return InputDecoration(
      focusedBorder:  const OutlineInputBorder(
        borderSide: const BorderSide(color: colorGreen, width: 1),
      ),
      fillColor: colorLight,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: colorLight, width: 0.0),
      ),
      border: OutlineInputBorder(),
      labelText: label
  );
}

// DropDown Style

DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(
    decoration: BoxDecoration(
      color:Colors.white,
      border:Border.all(color:Colors.white,width:1),
      borderRadius:BorderRadius.circular(4),),
      child:Padding(
        padding:EdgeInsets.only(left:30,right:30),
        child:child
      )

  );
}


//Background Image
SvgPicture ScreenBackground(context){
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment:Alignment.center,
    width:MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height,
    fit:BoxFit.cover
  );
}