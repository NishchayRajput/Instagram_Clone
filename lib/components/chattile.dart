import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatTile extends StatefulWidget {
  const chatTile({super.key});

  @override
  State<chatTile> createState() => _chatTileState();
}

class _chatTileState extends State<chatTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('lib/images/Nishchay.jpg'),
          radius: 25,
        ),
        title: Text('User Name'),
        subtitle: Text('Last Message'),
        trailing: IconButton(
          icon : Icon(Icons.camera_alt_outlined), onPressed: () {  },
        ),
      ),

    );
  }
}
