import 'package:flutter/material.dart';
import 'package:rent_portal/colors.dart';
import 'package:rent_portal/resources/button.dart';
import 'package:rent_portal/resources/reusable_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Controllers
final userCTRL = TextEditingController();
final emailCTRL = TextEditingController();
final passCTRL = TextEditingController();
final retypePassCTRl = TextEditingController();

// Global Key
final _formKey = GlobalKey<FormState>();
bool autoValidate = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Screen Body
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [orange, orangeColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          image: DecorationImage(image: AssetImage("assets/car_image.png")),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "VEHCLE RENTING SYSTEM",
                    style: TextStyle(
                        color: grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PoppinsBold"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _formKey,
                    autovalidateMode: autoValidate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100.withOpacity(.4),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "REGISTER",
                            style: TextStyle(
                              color: orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReusableField(
                            hint: "Username",
                            ctrl: userCTRL,
                          ),
                          ReusableField(
                            hint: "Email",
                            ctrl: emailCTRL,
                          ),
                          ReusableField(
                            hint: "Password",
                            ctrl: passCTRL,
                          ),
                          ReusableField(
                            hint: "Confirm Password",
                            ctrl: retypePassCTRl,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableButton(name: "Register", onPress: () {}),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
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
