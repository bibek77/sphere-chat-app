import 'package:flutter/material.dart';
import 'package:instant_messenger/utils/constants.dart';

class FilledOutlineButton extends StatelessWidget {
  const FilledOutlineButton(
      {Key? key,
      required this.isFilled,
      required this.press,
      required this.text})
      : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentLightColor : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
