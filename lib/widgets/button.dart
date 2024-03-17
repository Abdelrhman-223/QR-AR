/*
**********Project Name: qr_ar
**********File Name: button
**********Created At: 16-Mar-24 5:12 PM
**********Author: Abdelrhman Hussein
**********Description: the created button to contain the function of the qr and ar, tha widget well take the title and the function.
*/
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonFunction, required this.buttonTitle});
  final Function() buttonFunction;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
