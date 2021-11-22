import 'dart:developer';

import 'package:api_app/models/cc24_login_models/cc24response_model.dart';
import 'package:api_app/models/cc24_login_models/cc_data_model.dart';
import 'package:api_app/screens/login/components/background.dart';
import 'package:api_app/widgets/account_check.dart';
import 'package:api_app/widgets/forgot_password.dart';
import 'package:api_app/widgets/input_field.dart';
import 'package:api_app/widgets/password_field.dart';
import 'package:api_app/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../models/login_model.dart';

import '../../homepage.dart';

Future<MobileLoginParam> loginCred(String username, String password) async {
  final loginBody = MobileLoginParam(username: username, password: password);
  final response = await http.post(
    Uri.parse(
        'https://service11.carchat24.com/WebServices/CC24UserService/json/Mobile/Login/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(loginBody),
  );

  if (response.statusCode == 200) {
    var res = jsonDecode(response.body);
    var ccres = CC24Response.fromJson(res);

    var temp = jsonDecode(ccres.Data);
    Data.fromJson(temp);

    return MobileLoginParam.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Login Error');
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<MobileLoginParam>? _futureLogin;

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
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child:
                  (_futureLogin == null) ? buildColumn() : buildFutureBuilder(),
            ),
            // InputField(
            //   hintText: 'Email',
            //   onChanged: (value) {},
            // ),
            // PasswordField(
            //   hintText: 'Password',
            //   onChanged: (value) {},
            // ),
            // SubmitButton(
            //   text: 'Login',
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return const HomePage();
            //         },
            //       ),
            //     );
            //   },
            // ),
            const ForgotPassword(),
            SizedBox(height: size.height * 0.15),
            const AccountCheck(),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(hintText: 'Username'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(hintText: 'Password'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureLogin =
                  loginCred(_usernameController.text, _passwordController.text);
            });
          },
          child: const Text('Login'),
        ),
      ],
    );
  }

  FutureBuilder<MobileLoginParam> buildFutureBuilder() {
    return FutureBuilder<MobileLoginParam>(
      future: _futureLogin,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
