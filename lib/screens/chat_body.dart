import 'package:flutter/material.dart';
import 'package:instant_messenger/components/outline_button.dart';
import 'package:instant_messenger/models/chat_items.dart';
import 'package:instant_messenger/screens/message_screen.dart';
import 'package:instant_messenger/utils/constants.dart';

import 'char_cards.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              FilledOutlineButton(
                press: () {},
                text: "Recent",
                isFilled: true,
              ),
              SizedBox(
                width: kDefaultPadding * 2,
              ),
              FilledOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
              SizedBox(
                width: kDefaultPadding * 2,
              ),
              FilledOutlineButton(
                press: () {},
                text: "Groups",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatData.length,
                itemBuilder: (context, index) => ChatCard(
                      chat: chatData[index],
                      press: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen())),
                    )))
      ],
    );
  }
}

