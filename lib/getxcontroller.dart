import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Home extends GetxController{
  var username=''.obs;
  var password=''.obs;
  RxBool button= false.obs;

  void onUsername(String value){
    username.value=value;
    validateform();
  }
  void onPassword(String value){
    password.value=value;
    validateform();
  }

  void validateform() {
    button.value=username.isNotEmpty && password.isNotEmpty;
  }

void Buttonpressed(){
    if(button.value){
      print("button pressed");
    }
}
}