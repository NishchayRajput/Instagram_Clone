import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool activeNotification = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(right: 120),
        child: Image.asset(
          'lib/images/iglogo.jpg', // Corrected the asset path
          height: 50,
          width: 200,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            activeNotification ? Icons.favorite : Icons.favorite_border_outlined,
          ),
          onPressed: () {
            setState(() {
              activeNotification = !activeNotification;
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.message_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}