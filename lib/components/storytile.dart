import 'package:flutter/material.dart';
import 'package:ig/components/storywidget.dart';

class StoryTile extends StatefulWidget {
  const StoryTile({super.key});

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.fromLTRB(5,0,1.0,0),
          child: storyIcon(),
        );
      }
        , scrollDirection: Axis.horizontal,
      ),
    );
  }
}
