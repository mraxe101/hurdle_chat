import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hurdle_chat/Module/Inbox/Inbox.dart';
import 'package:hurdle_chat/common/Appcolor.dart';
import 'package:hurdle_chat/common/Button.dart';

class Profile extends StatelessWidget {
  final String userID;
  const Profile({super.key, required this.userID});

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
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Appcolor.white1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Let's get started",
                    style: TextStyle(
                      color: Appcolor.white1,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "First Name",
                  style: TextStyle(color: Appcolor.white1, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "john",
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
                  "Last Name",
                  style: TextStyle(color: Appcolor.white1, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Doe",
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
                  "Phone Number",
                  style: TextStyle(color: Appcolor.white1, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "+923044444444",
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
                  "City",
                  style: TextStyle(color: Appcolor.white1, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Xyz",
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
                  "Gender",
                  style: TextStyle(color: Appcolor.white1, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Select one",
                    hintStyle: const TextStyle(
                      color: Colors.grey, // Use your Appcolor.grey1
                    ),
                    filled: true,
                    fillColor: Colors.grey[200], // Use your Appcolor.grey2
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: PopupMenuButton<String>(
                      icon: const Icon(Icons.arrow_drop_down),
                      onSelected: (value) {
                        print('Selected: $value');
                      },
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem<String>(
                            value: 'Male',
                            child: Text("Male"),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Female',
                            child: Text("Female"),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Primerybotton(
                    title: "Continue",
                    onPressed: () {
                      Get.offAll(() => const Inbox());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
