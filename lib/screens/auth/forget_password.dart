import 'package:flutter/material.dart';
import 'package:rent_portal/colors.dart';
import 'package:rent_portal/resources/button.dart';
import 'package:rent_portal/resources/reusable_field.dart';


class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          color: blackColor
          
        ),
        child:   SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.all(8),
            child:  SafeArea(
              child: 
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Text('Forget\nPassword?',style: TextStyle(fontFamily: "PoppinsBold",fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                     const SizedBox(height: 100,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          const Center(child:  Text('Please Enter Your Email Adress To\n   Recive An Verification Code ', style: TextStyle(fontSize: 20,fontFamily:"PoppinsBold",fontWeight: FontWeight.bold,color: Colors.black ),)),
                          const SizedBox(height: 2,),
                         const ReusableField(hint: "Email",
                          
                          
                          ),
                          const SizedBox(height: 20,),
                          ReusableButton(name: 'Forget Password', onPress: (){})

                          
                        ],
                      ),
                    
                  ],
                ),
              
            ),
          ),
        ),
      ),
    );
  }
}