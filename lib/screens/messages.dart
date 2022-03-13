import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/text_message.dart';

import '../models/chat_message.dart';
import '../utils/constants.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContent(ChatMessage message) {
      switch (message.chatMessageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          // if (!message.isSender) ...[
          //   CircleAvatar(
          //     radius: 12,
          //     backgroundImage:
          //         AssetImage("assets/images/profile_images/gaara-profile.jpeg"),
          //   ),
          //   SizedBox(
          //     width: kDefaultPadding / 2,
          //   )
          // ],
          messageContent(message),
        ],
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding*0.75,
        vertical: kDefaultPadding/2
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
    );
  }
}
