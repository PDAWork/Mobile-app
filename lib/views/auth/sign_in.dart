import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiwi_mobile_app/views/auth/sign_up.dart';
import 'package:qiwi_mobile_app/views/home.dart';
import 'package:qiwi_mobile_app/views/widgets/text_filed_password.dart';
import 'package:qiwi_mobile_app/views/widgets/text_filed_phone.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Spacer(),
            Text(
              'QIWI Mobile',
              style: TextStyle(fontSize: 28),
            ),
            const TextFieldPhone(),
            SizedBox(height: 10),
            const TextFiledPassword(),
            ElevatedButton(
              onPressed: () {
                Get.to(HomePage());
              },
              child: Text('Войти в систему'),
            ),
            Spacer(
              flex: 2,
            ),
          ]),
        ),
      ),
    );
  }
}
