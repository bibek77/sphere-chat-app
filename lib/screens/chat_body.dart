import 'package:flutter/material.dart';
import 'package:instant_messenger/components/outline_button.dart';
import 'package:instant_messenger/utils/constants.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FilledOutlineButton(
                press: () {},
                text: "Recent",
                isFilled: true,
              ),
              SizedBox(width: kDefaultPadding,),
              FilledOutlineButton(
                press: () {},
                text: "Activee",
                isFilled: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}
