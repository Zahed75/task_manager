import 'package:flutter/material.dart';
import 'package:task_manager/screen/onboarding/loginScreen.dart';
import 'package:task_manager/screen/onboarding/registrationScreen.dart';
import 'package:task_manager/screen/onboarding/splashScreen.dart';
import 'package:task_manager/screen/onboarding/emailVerifyScreen.dart';
import 'package:task_manager/screen/onboarding/pinVerification.dart';
import 'package:task_manager/screen/onboarding/setPasswordScreen.dart';
import 'package:task_manager/screen/task/newTaskListScreen.dart';







void main(){
  runApp(const MyApp());
}
// stateless widgets

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Task Manager",
      initialRoute:'/login',
      routes: {
        '/':(context)=>splashScreen(),
        '/login':(context)=>loginScreen(),
        '/registration':(context)=>registrationScreen(),
        '/emailVerify':(context)=>emailVerifyScreen(),
        '/pinVerification':(context)=>pinVerificationScreen(),
        '/setPassword':(context)=>setPasswordScreen(),
        '/newTaskList':(context) => newTaskListScreen(),
      },


    );
  }
}

