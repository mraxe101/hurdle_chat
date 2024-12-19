import 'package:flutter/material.dart';
import 'package:hurdle_chat/common/Appcolor.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black1,
      appBar: AppBar(
        backgroundColor: Appcolor.black1,
        title: Text(
          "Messages",
          style: TextStyle(
            color: Appcolor.white1,
            fontSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.edit_calendar,
              color: Appcolor.white1,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Appcolor.grey1,
                  ),
                  filled: true,
                  fillColor: Appcolor.grey2,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: const Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
