import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function press;

  const SubmitButton({Key? key, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: newElevatedButton(text, press),
      ),
    );
  }
}

Widget newElevatedButton(text, press) {
  return ElevatedButton(
    child: Text(text),
    onPressed: press,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
