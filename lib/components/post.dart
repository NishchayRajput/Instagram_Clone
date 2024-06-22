import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('./lib/images/Nishchay.jpg'),
              radius: 20,
            ),
          ),
          const Text(
            'Nishchay',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      Container(
        child: Image.asset(
          './lib/images/Nishchay.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Row(
        children: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text('Liked by Nishchay and 100 others'),
          ),
          Spacer(),
        ],
      ),
    ]);
  }
}
