import 'package:flutter/material.dart';
import 'package:task_manager/style/style.dart';

class registrationScreen extends StatefulWidget{

const registrationScreen({Key?key}):super(key:key);

@override

State<registrationScreen>createState()=> _registrationScreenState();


}

class _registrationScreenState extends State<registrationScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding:EdgeInsets.all(30),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Join With US",style:Head1Text(colorDarkBlue),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Email Address"),),
                SizedBox(height:20),
                TextFormField(decoration: AppInputDecoration("Name"),),
                SizedBox(height: 20),
                

              ],
            )
          )
        ],
      )
    );
  }
}