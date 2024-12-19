import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Auth/view/Login.dart';
import 'package:hurdle_chat/common/Appcolor.dart';
import 'package:hurdle_chat/common/Button.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return Scaffold(
      backgroundColor: Appcolor.black1,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "New Password",
                  style: TextStyle(color: Appcolor.white1, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "New Password",
              style: TextStyle(color: Appcolor.white1, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password",
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
              height: 10,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(
                color: Appcolor.white1,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                  hintText: "Confirm Password",
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
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Appcolor.grey1,
                      ))),
            ),
            const SizedBox(
              height: 20,
            ),
            Primerybotton(
                title: "Sumbit",
                onPressed: () {
                  Get.offAll(() => const Login());
                }),
          ],
        ),
      )),
    );
  }
}
