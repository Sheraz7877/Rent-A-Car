import 'package:flutter/material.dart';
import 'package:rent_portal/colors.dart';
import 'package:rent_portal/resources/button.dart';
import 'package:rent_portal/resources/reusable_field.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

// Controllers
final userCTRL = TextEditingController();
final emailCTRL = TextEditingController();
final passCTRL = TextEditingController();
final retypePassCTRl = TextEditingController();

// Global Key
final _formKey = GlobalKey<FormState>();

//bools
bool autoValidate = false;
bool visiblePass = true;

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Screen Body
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [blackColor, lightBlack],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter),
          image: DecorationImage(image: AssetImage("assets/car_image.png")),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Find the best\nvehcle for you...",
                    style: TextStyle(
                        color: grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PoppinsBold"),
                    textAlign: TextAlign.left,
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
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100.withOpacity(.5),
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
                              color: blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReusableField(
                            hint: "Username",
                            fieldIcon: const Icon(
                              Icons.person,
                              color: black,
                            ),
                            ctrl: userCTRL,
                            validator: (value) {
                              if (value!.length < 8) {
                                return "Name should be 8 characters long";
                              }
                              return null;
                            },
                          ),
                          ReusableField(
                            hint: "Email",
                            fieldIcon: const Icon(
                              Icons.email_outlined,
                              color: black,
                            ),
                            ctrl: emailCTRL,
                          ),
                          ReusableField(
                            hint: "Password",
                            hidePass: visiblePass,
                            fieldIcon: const Icon(
                              Icons.lock,
                              color: black,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    visiblePass
                                        ? visiblePass = false
                                        : visiblePass = true;
                                  });
                                },
                                icon: Icon(visiblePass
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            ctrl: passCTRL,
                            validator: (value) {
                              if (value!.length < 8) {
                                return "Password should be 8 characters long";
                              } else if (value.contains(" ")) {
                                return "Don't use space , (.) , (,)";
                              }
                              return null;
                            },
                          ),
                          ReusableField(
                            hint: "Confirm Password",
                            hidePass: visiblePass,
                            fieldIcon: const Icon(
                              Icons.lock,
                              color: black,
                            ),
                            ctrl: retypePassCTRl,
                            validator: (value) {
                              if (passCTRL.text.isEmpty) {
                                return "Password field is Empty";
                              } else if (value != passCTRL.text) {
                                return "Password Doesn't Matched";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableButton(
                              name: "Register",
                              btnColor: greenColor,
                              textClr: blackColor,
                              onPress: () {
                                setState(() {
                                  autoValidate = true;
                                });
                                if (_formKey.currentState!.validate()) {
                                  debugPrint(
                                      "~~~~~~ USER DETAILS HERE ~~~~~~~");
                                  debugPrint(
                                      "~~~~~~ Username : ${userCTRL.text.toString()} ~~~~~~~");
                                  debugPrint(
                                      "~~~~~~ Email : ${emailCTRL.text.toString()} ~~~~~~~");
                                  debugPrint(
                                      "~~~~~~ Pasword : ${passCTRL.text.toString()} ~~~~~~~");
                                  debugPrint(
                                      "~~~~~~ REGISTERED SUCCESSFULLY ~~~~~~~");
                                } else {}
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: grey,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "Sign Up using",
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReusableButton(
                              name: "Google",
                              btnColor: grey,
                              textClr: blackColor,
                              onPress: () {}),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(
                            color: grey, fontSize: 12, fontFamily: "Poppins"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: greenColor,
                              decoration: TextDecoration.underline,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        ),
                      ),
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
