import 'package:flutter/material.dart';

import '../style.dart';

class AccountCheck extends StatelessWidget {
  const AccountCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 140, bottom: 20),
      child: Row(
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
      ),
    );
  }
}
