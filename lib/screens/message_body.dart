import 'package:flutter/material.dart';

import 'package:instant_messenger/models/chat_message.dart';
import 'package:instant_messenger/screens/text_message.dart';
import 'package:instant_messenger/utils/constants.dart';

import 'chat_input.dart';
import 'messages.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: dummyChatMessages.length,
              itemBuilder: (context, index) => Messages(
                    message: dummyChatMessages[index],
                  )),
        )),
        ChatInputField(),
      ],
    );
  }
}
