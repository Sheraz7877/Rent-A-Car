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
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: blackColor,
          image: DecorationImage(
            image: AssetImage("assets/car_image.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    fontFamily: "PoppinsBold",
                    fontSize: 25,
                    color: greenColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  'Enter your registered Email Address\n to reset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      color: grey,
                      fontWeight: FontWeight.w400),
                )),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(.3),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableField(
                        hint: "Email",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableButton(name: 'Continue', onPress: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}