import 'package:flutter/material.dart';

class storyIcon extends StatefulWidget {
  const storyIcon({super.key});

  @override
  State<storyIcon> createState() => _storyIconState();
}

class _storyIconState extends State<storyIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
              width: 80, // Adjust the size as needed
              height: 80, // Adjust the size as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFF9CE34),
                    Color(0xFFEE2A7B),
                    Color(0xFF6228D7),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.5),
                child: CircleAvatar(

                  radius: 35,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('./lib/images/Nishchay.jpg'),
                  ),
                ),
              )),
          const Text(
            'Nishchay',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ]);
  }
}
