import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/chat_body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          CupertinoIcons.person_add_solid,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: "Chats"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_fill), label: "People"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone_fill), label: "Calls"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                  "assets/images/profile_images/senku-profile.jpeg")),
          label: "Profile",
        ),
      ],
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
