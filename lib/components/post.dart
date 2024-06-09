import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig/components/storywidget.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text('Post'),
      ),
        body: Container(
          child: Column(
            // spacing: 1,
            children: [
              ListTile(
                style: ListTileStyle.drawer,
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('./lib/images/Nishchay.jpg'),
          radius: 20,
                ),
                title: const Text('Nishchay', style: TextStyle(fontSize:13, fontWeight: FontWeight.bold),),
                subtitle: const Text('Location', style: TextStyle(fontSize:10, fontWeight: FontWeight.normal),),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.2,
              ),



            ]
          ),
        )
    );
  }
}
