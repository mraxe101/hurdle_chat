import 'package:flutter/material.dart';
import 'package:hurdle_chat/common/Appcolor.dart';

class Primerybotton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Size? size;
  const Primerybotton(
      {super.key,
      required this.title,
      required this.onPressed(),
      this.color = Colors.white,
      this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 1,
      ),
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
          color: Appcolor.green, borderRadius: BorderRadius.circular(25)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          )),
    );
  }
}
