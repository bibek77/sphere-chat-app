import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/chat_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Messages"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }
}
