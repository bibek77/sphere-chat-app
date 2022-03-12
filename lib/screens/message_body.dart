import 'package:flutter/material.dart';
import 'package:instant_messenger/models/chat_message.dart';
import 'chat_input.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: dummyChatMessages.length,
                itemBuilder: (context, index) => Messages(message: dummyChatMessages[index],))),
        ChatInputField(),
      ],
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key, required this.message,
  }) : super(key: key);

  final ChatMessage message;
  
  @override
  Widget build(BuildContext context) {
    return Text("Chat Text");
  }
}
