import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String chatName;
  final String messageBody;
  final String time;
  final String imagePath;

  const ChatWidget(
      {super.key,
      required this.chatName,
      required this.messageBody,
      required this.time,
      required this.imagePath});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          widget.imagePath,
          height: 75,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.chatName),
            Text(widget.messageBody),
          ],
        ),
        Text(widget.time)
      ],
    );
  }
}
