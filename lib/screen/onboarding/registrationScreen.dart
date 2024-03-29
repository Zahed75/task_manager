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
      resizeToAvoidBottomInset: true,
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
                TextFormField(decoration: AppInputDecoration("First Name"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Last Name"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Mobile Number"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Password"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInputDecoration("Confirm Password"),),
                SizedBox(height: 20),
                  Container(child:ElevatedButton(
                  style:AppButtonStyle(),
                  child:SuccessButtonChild('SignUp'),
                  onPressed: (){
                    
                  },
                ),)
              ],
            )
          )
        ],
      )
    );
  }
}