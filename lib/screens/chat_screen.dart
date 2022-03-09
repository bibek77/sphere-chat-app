import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/chat_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(CupertinoIcons.person_add_solid,
        color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle), label: "People"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone), label: "Calls"),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text("Messages"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }
}
