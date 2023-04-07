//import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:gnr8/shared/shared.dart';

class ChatGPT extends StatefulWidget {
  ChatGPT({Key? key}) : super(key: key);

  @override
  State<ChatGPT> createState() => _ChatGPTState();
}

class _ChatGPTState extends State<ChatGPT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ChatWidget(),
    );
  }
}
