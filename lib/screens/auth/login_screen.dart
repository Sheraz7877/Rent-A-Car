import 'package:flutter/cupertino.dart';
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
final emailCTRL = TextEditingController();
final passCTRL = TextEditingController();

// Global Key
final _formKey = GlobalKey<FormState>();

//bools
bool autoValidate = false;
bool visiblePass = true;

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
              colors: [blackColor, lightBlack],
              begin: Alignment.topCenter,
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
                    "Welcome Back! Get\nyour favorite car",
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
                            "LOGIN",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReusableField(
                            hint: "Username or Email",
                            fieldIcon: const Icon(
                              Icons.person,
                              color: black,
                            ),
                            ctrl: emailCTRL,
                            validator: (value) {
                              if (value!.length < 8) {
                                return "Name should be 8 characters long";
                              }
                              return null;
                            },
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
                          const SizedBox(
                            height: 5,
                          ),
                          ReusableButton(
                              name: "Sign in",
                              btnColor: greenColor,
                              textClr: black,
                              onPress: () {
                                setState(() {
                                  autoValidate = true;
                                });
                                if (_formKey.currentState!.validate()) {
                                  debugPrint(
                                      "~~~~~~ USER DETAILS HERE ~~~~~~~");
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
                                  "or Sign in using",
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
                              textClr: black,
                              onPress: () {
                                showCupertinoDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        content: Text(
                                            'Google login is under maintainance...'),
                                        title: Text('Hello friend'),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Close",
                                                style: TextStyle(
                                                    color: blackColor),
                                              )),
                                        ],
                                      );
                                    });
                              }),
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
                        "Don't have an account? ",
                        style: TextStyle(
                            color: grey, fontSize: 12, fontFamily: "Poppins"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign up",
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
