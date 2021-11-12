import 'package:api_app/screens/login/components/background.dart';
import 'package:api_app/widgets/account_check.dart';
import 'package:api_app/widgets/forgot_password.dart';
import 'package:api_app/widgets/input_field.dart';
import 'package:api_app/widgets/password_field.dart';
import 'package:api_app/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../homepage.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/login.svg",
              width: size.width * 0.65,
            ),
            const Text(
              'Welcome to CarChat24',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            InputField(
              hintText: 'Email',
              onChanged: (value) {},
            ),
            PasswordField(
              hintText: 'Password',
              onChanged: (value) {},
            ),
            SubmitButton(
              text: 'Login',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
            ),
            const ForgotPassword(),
            const AccountCheck(),
          ],
        ),
      ),
    );
  }
}
