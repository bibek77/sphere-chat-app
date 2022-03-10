import 'package:flutter/material.dart';
import 'package:instant_messenger/utils/constants.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: SafeArea(
              child: Row(
            children: [
              Icon(
                Icons.mic,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.09),
                    borderRadius: BorderRadius.circular(40),
                    ),
                child: Row(
                  children: [
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.64),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "type message", border: InputBorder.none),
                    )),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.64),
                    ),
                    Icon(
                      Icons.camera_alt,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color!
                          .withOpacity(0.64),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                  ],
                ),
              ))
            ],
          )),
        )
      ],
    );
  }
}
