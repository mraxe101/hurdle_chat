import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Auth/view/Login.dart';
import 'package:hurdle_chat/Module/Auth/view/Signup.dart';
import 'package:hurdle_chat/Module/Auth/view/Verification.dart';
import 'package:hurdle_chat/common/Appcolor.dart';
import 'package:hurdle_chat/common/Button.dart';

class Forgetpasswoed extends StatelessWidget {
  const Forgetpasswoed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black1,
      appBar: AppBar(
        backgroundColor: Appcolor.black1,
        leading: GestureDetector(
          onTap: () {
            Get.to(() => (const Login()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Appcolor.white1,
          ),
        ),
        title: Text(
          "Forget Password",
          style: TextStyle(color: Appcolor.white1),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: Text(
                  "Enter Email Address",
                  style: TextStyle(
                    color: Appcolor.white1,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
              height: 30,
            ),
            Primerybotton(
                title: "Send",
                onPressed: () {
                  Get.to(() => const Verification());
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
                  style: TextStyle(
                    color: Appcolor.white1,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Appcolor.white1,
                  ),
                )
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
                      style: TextStyle(fontSize: 20, color: Appcolor.white1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
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
              Get.off(() => const signup()); // Correctly call Get.to() here
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
