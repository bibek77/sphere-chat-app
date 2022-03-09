import 'package:flutter/material.dart';
import 'package:instant_messenger/components/outline_button.dart';
import 'package:instant_messenger/models/chat_items.dart';
import 'package:instant_messenger/models/chat_message.dart';
import 'package:instant_messenger/utils/constants.dart';

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
                text: "Calls",
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
                    )))
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final ChatItems chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(chat.image),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3
                    )
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  chat.name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8,),
                Opacity(
                  opacity: 0.64,
                  child: Text(
                    chat.lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
            ],
          ),
              )),
              Opacity(
                opacity: 0.74,
                child: Text(chat.time)),
        ],
      ),
    );
  }
}
