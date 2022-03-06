import 'package:flutter/material.dart';
import 'package:instant_messenger/components/primary_button.dart';
import 'package:instant_messenger/screens/chat_screen.dart';
import 'package:instant_messenger/utils/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/login-image.png",
              height: 280,
            ),
            Spacer(
              flex: 1,
            ),
            PrimaryButton(text: "Sign In", press: () 
            => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()))),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {}),
            Spacer(
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}
