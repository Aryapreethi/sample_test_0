import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getxcontroller.dart';

class MyHomePage extends StatelessWidget {
  final Home _home=Get.put(Home());
   MyHomePage({super.key});


  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigoAccent),),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  onChanged: _home.onUsername,
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "this feild is requird";
                    }
                    return null;
                  },

                  decoration:InputDecoration(
                    hintText: "UserName",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  onChanged: _home.onPassword,
                  validator: (value){
                    if(value!.isEmpty){
                      return "password required";
                    }else if(value!.length<=6){
                      return "password must be more than 6 characters";
                    }
                    return null;
                  },
                  decoration:InputDecoration(
                    hintText: "Enter password",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Obx(() => InkWell(
                onTap:
                    (){
                  if(formkey.currentState!.validate()){
                    _home.Buttonpressed;
                  }
                },
                child: Container(
                  height: 50,
                  width: 200,
                  color: _home.button.value ? Colors.blue : Colors.grey,
                  child: const Center(child: Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,fontWeight: FontWeight.bold),)),
                ),
              )),
            ],
          ),
        )
    );
  }
}
