import 'package:flutter/material.dart';
import 'package:instant_messenger/screens/message_body.dart';
import 'package:instant_messenger/utils/constants.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(children: [
        BackButton(),
        CircleAvatar(
          backgroundImage:
              AssetImage("assets/images/profile_images/gaara-profile.jpeg"),
        ),
        SizedBox(
          width: kDefaultPadding * 0.75,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gaara",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Active 12d ago",
              style: TextStyle(fontSize: 12),
            ),
          ],
        )
      ]),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
