import 'dart:convert';
import 'package:task_manager/style/style.dart';
import 'package:http/http.dart' as http;
import '../utility/utility.dart';

var BaseURL="https://task.teamrabbil.com/api/v1";
var RequestHeader={"Content-Type":"application/json"};


//Login API calling

Future<bool> LoginRequest(FormValues) async{
  var URL=Uri.parse("${BaseURL}/login");
  var PostBody=json.encode(FormValues);
  var response= await http.post(URL,headers:RequestHeader,body: PostBody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);
  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
   return true;
  }
  else{
    ErrorToast("Request fail ! try again");
    return false;
  }
}



// Registration API


Future<bool> RegistrationRequest(FormValues) async{
  var URL=Uri.parse("${BaseURL}/registration");
  var PostBody=json.encode(FormValues);

  var response= await http.post(URL,headers:RequestHeader,body: PostBody);

  var ResultCode=response.statusCode;

  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
   return true;
  }
  else{
    ErrorToast("Request fail ! try again");
    return false;
  }
}

// Recover Verify Email Request

Future<bool> VerifyEmailRequest(Email) async{
  var URL=Uri.parse("${BaseURL}/RecoverVerifyEmail/${Email}");

  //Calling

  var response= await http.get(URL,headers:RequestHeader);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);
  if(ResultCode==200 && ResultBody['status']=="success"){
  
    SuccessToast("Request Success");
    return true;
  }
  else{
    ErrorToast("Request fail ! try again");
    return false;
  }
}





// Verify OTP Request
Future<bool> VerifyOTPRequest(Email,OTP) async{
  var URL=Uri.parse("${BaseURL}/RecoverVerifyOTP/${Email}/${OTP}");

  var response =await http.get(URL,headers:RequestHeader);

  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }
  else{
    ErrorToast("Request Failed");
    return false;
  }

}




// SetPassword Request
Future<bool>SetPasswordRequest(FormValues) async{
  
  var URL=Uri.parse("${BaseURL}/RecoverResetPass");
  var PostBody=json.encode(FormValues);
  var response =await http.post(URL,headers:RequestHeader,body:PostBody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }
  else{
    ErrorToast("Request Failed");
    return false;
  }
}





