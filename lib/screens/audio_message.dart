import 'package:flutter/material.dart';

import '../models/chat_message.dart';
import '../utils/constants.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      // height: 40,
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimaryColor.withOpacity(message.isSender ? 0.85 : 0.08)),
      child: Row(children: [
        Icon(
          Icons.play_arrow,
          color: !message.isSender ? kPrimaryColor : Colors.white,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 2,
                color: !message.isSender ? kPrimaryColor.withOpacity(0.4) : Colors.white,
              ),
              Positioned(
                left: 0,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                ),
              )
            ],
          ),
        )),
        Text(
          "0.37",
          style: TextStyle(
              fontSize: 12, color: message.isSender ? Colors.white : null),
        ),
      ]),
    );
  }
}
