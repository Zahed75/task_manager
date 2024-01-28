import 'package:flutter/material.dart';
import 'package:task_manager/style/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class pinVerificationScreen extends StatefulWidget{

const pinVerificationScreen({Key?key}):super(key:key);

@override

State<pinVerificationScreen>createState()=> _pinVerificationScreenState();


}

class _pinVerificationScreenState extends State<pinVerificationScreen>{
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
                Text("PIN Verification",style:Head1Text(colorDarkBlue)),
                SizedBox(height:1),
                Text("A 6 digit pin has been sent to your mobile number",style:Head6Text(colorLightGray)),
                SizedBox(height:20),

                //Pin Code Field
                PinCodeTextField(
                  appContext:context,
                  length:6,
                  pinTheme:AppOTPStyle(),
                  animationType:AnimationType.fade,
                  animationDuration:Duration(milliseconds:300),
                  enableActiveFill:true,
                  onCompleted:(v){

                  },
                  onChanged:(value){

                  },
                )

              ],
            )
          )
        ],
      ),
    );
  }
  }
