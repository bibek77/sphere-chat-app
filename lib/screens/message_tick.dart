import 'package:flutter/material.dart';
import 'package:instant_messenger/models/chat_message.dart';

import '../utils/constants.dart';

class MessageStatusTick extends StatelessWidget {
  final MessageStatus messageStatus;
  const MessageStatusTick({Key? key, required this.messageStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? dotColor(MessageStatus messageStatus) {
      switch (messageStatus) {
        case MessageStatus.not_sent:
          return kErrorColor;
        case MessageStatus.not_viwed:
          return Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 15,
      width: 15,
      decoration:
          BoxDecoration(color: dotColor(messageStatus), shape: BoxShape.circle),
      child: Icon(
        messageStatus == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 10,
        color: Colors.white,
      ),
    );
  }
}
