import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Auth/view/ForgetPasswoed.dart';
import 'package:hurdle_chat/Module/Auth/view/Signup.dart';
import 'package:hurdle_chat/Module/Inbox/Inbox.dart';
import 'package:hurdle_chat/common/Appcolor.dart';
import 'package:hurdle_chat/common/Button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: Center(
                    child: Text(
                      "Welcome back!",
                      style: TextStyle(
                        color: Appcolor.white1,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Appcolor.white1,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "alex@email.com",
                      hintStyle: TextStyle(
                        color: Appcolor.grey1,
                      ),
                      filled: true,
                      fillColor: Appcolor.grey2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Appcolor.white1,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      hintStyle: TextStyle(
                        color: Appcolor.grey1,
                      ),
                      filled: true,
                      fillColor: Appcolor.grey2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Appcolor.grey1,
                          ))),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const Forgetpasswoed());
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Appcolor.green,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Primerybotton(
                    title: "login",
                    onPressed: () {
                      Get.offAll(() => const Inbox());
                    }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Appcolor.white1,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Appcolor.white1, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Appcolor.white1,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Appcolor.black1,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Appcolor.white1,
                        width: 0.2,
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          "asset/Google.jpg",
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Text(
                          "Continue with Google",
                          style:
                              TextStyle(fontSize: 20, color: Appcolor.white1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(
              color: Appcolor.white1,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(() => const signup()); // Correctly call Get.to() here
            },
            child: Text(
              "Sign up",
              style: TextStyle(color: Appcolor.yellew1, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}