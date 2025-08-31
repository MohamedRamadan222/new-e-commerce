import 'package:e_commercet/screens/login.dart';
import 'package:e_commercet/shared/colors.dart';
import 'package:flutter/material.dart';

import '../shared/custom_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 64),
                  CustomTextField(
                    hintText: "Enter Your UserName:",
                    textInputType: TextInputType.text,
                    isSecure: false,
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    hintText: "Enter Your Email:",
                    textInputType: TextInputType.emailAddress,
                    isSecure: false,
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    hintText: "Enter Your Password:",
                    textInputType: TextInputType.text,
                    isSecure: true,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: btnGreen,
                      foregroundColor: Colors.white,
                      elevation: 6,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (c) => Login()),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: btnBink, fontSize: 16),
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
