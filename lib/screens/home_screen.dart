import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instant_messenger/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset("assets/images/welcome-image.png"),
          Spacer(flex: 3,),
          Text(
            "Hi! Lets Sphere Chat",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            "Quick chat with anyone with Sphere Chat.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color!
                    .withOpacity(0.64)),
          ),
          Spacer(flex: 3,),
          FittedBox(
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.8)),
                    ),
                    SizedBox(width: kDefaultPadding/4,),
                    Icon(Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color
                            ?.withOpacity(0.8))
                  ],
                )),
          )
        ],
      )),
    );
  }
}
