import 'package:flutter/material.dart';
import 'package:instant_messenger/models/chat_message.dart';

import '../utils/constants.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({Key? key, required ChatMessage message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/images/naruto-video-poster.jpeg")),
            Container(
              height: 28,
              width: 28,
              decoration:
                  BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
              child: Icon(
                Icons.play_arrow,
                size: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
