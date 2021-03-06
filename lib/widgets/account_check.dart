import 'package:flutter/material.dart';

import '../style.dart';

class AccountCheck extends StatelessWidget {
  const AccountCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text(
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        Text(
          "Register!",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
