import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  MemberPage({Key? key}) : super(key: key);

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.approval),
          )
        ],
      ),
    );
  }
}
