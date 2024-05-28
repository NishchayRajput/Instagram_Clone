import 'package:flutter/material.dart';

class homeAppBar extends StatefulWidget {
  const homeAppBar({super.key});

  @override
  State<homeAppBar> createState() => _homeAppBarState();
}

class _homeAppBarState extends State<homeAppBar> {
  bool activeNotification = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 120),
        child: Image.asset(
          './lib/images/iglogo.jpg',
          height: 50,
          width: 200,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite_border_outlined),
          onPressed: () {
            setState(() {
              activeNotification = !activeNotification;
            });
          },
          isSelected: activeNotification,
          selectedIcon: Icon(Icons.favorite),
        ),
        IconButton(
          icon: Icon(Icons.message_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
