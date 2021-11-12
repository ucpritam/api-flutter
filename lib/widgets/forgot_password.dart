import 'package:api_app/style.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text(
          'Forgot Password?',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
