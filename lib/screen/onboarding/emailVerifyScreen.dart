import 'package:flutter/material.dart';
import 'package:task_manager/style/style.dart';
class emailVerifyScreen extends StatefulWidget{

const emailVerifyScreen({Key?key}):super(key:key);

@override

State<emailVerifyScreen >createState()=> _emailVerifyScreenState();


}

class _emailVerifyScreenState extends State<emailVerifyScreen>{
  @override
  Widget build(BuildContext context){
      return Scaffold(
      body:Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            padding:EdgeInsets.all(30),

            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Email Address",style:Head1Text(colorDarkBlue)),
                SizedBox(height:1),
                Text("A 6 digit pin verification is sent your email address",style:Head6Text(colorLightGray)),
                SizedBox(height:20),
                TextFormField(decoration: AppInputDecoration("Email Address"),),
                SizedBox(height:20),
      
                Container(child:ElevatedButton(
                  style:AppButtonStyle(),
                  child:SuccessButtonChild('Login'),
                  onPressed: (){
                    
                  },
                ),)
              ],
            )
          )
        ],
      ),
    );
  }}