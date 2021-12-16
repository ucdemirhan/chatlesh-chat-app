import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex :2),
              Image.asset(
                MediaQuery.of(context).platformBrightness==Brightness.light ?
                "assets/images/Logo_light.png"
                : "assets/images/Logo_dark.png" ,
                height :146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Giriş",
                press: () =>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>ChatsScreen()),
                ),
              ),
              SizedBox(height:kDefaultPadding *1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Kayıt Ol",
                press: () {},
              ),
              Spacer(flex :2),
            ],
          ),
        )
      ),
    );
  }
}
