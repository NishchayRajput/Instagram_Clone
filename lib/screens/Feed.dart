import 'package:flutter/material.dart';
import 'package:ig/components/homeAppBar.dart';
import 'package:ig/components/storytile.dart';

import '../components/bottomnavigator.dart';
import '../components/post.dart';

class FeedUser extends StatefulWidget {
  const FeedUser({super.key});

  @override
  State<FeedUser> createState() => _FeedUserState();
}

class _FeedUserState extends State<FeedUser> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: HomeAppBar(),
     // body: Column(
     //   children:[
     //     const StoryTile(),
     //     const post(),
     //   ]
     // ),

      body : ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const StoryTile();
          }
          return const post();
        },
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}