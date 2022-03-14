import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/text_message.dart';
import 'package:instant_messenger/screens/video_message.dart';

import '../models/chat_message.dart';
import '../utils/constants.dart';
import 'audio_message.dart';
import 'message_tick.dart';

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
          return AudioMessage(
            message: message,
          );
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
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
          if (message.isSender)
            MessageStatusTick(
              messageStatus: message.messageStatus,
            )
        ],
      ),
    );
  }
}
