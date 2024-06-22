import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  bool activeNotification = false;
  bool activeHome = true;
  bool activeSearch = false;
  bool activePosts = false;
  bool activeReels = false;
  bool activeProfile = false;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                setState(() {
                  activeSearch =false;
                  activePosts = false;
                  activeReels = false;
                  activeProfile = false;
                  activeHome = true;

                });
              },
              icon: Icon(Icons.home_outlined),
              isSelected: activeHome,
              selectedIcon: Icon(Icons.home)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.search),
            isSelected: activePosts,
            selectedIcon: Icon(Icons.search_outlined),
            onPressed: () {
              setState(() {
                activeHome =false;
                activeProfile =false;
                activeReels =false;
                activePosts =false;
                activeSearch = true;
              });
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.add_box_outlined),
            isSelected: activePosts,
            selectedIcon: Icon(Icons.add_box),
            onPressed: () {
              setState(() {
                activeHome =false;
                activeProfile =false;
                activeReels =false;
                activeSearch =false;
                activePosts = true;
              });
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.video_collection_outlined),
            isSelected: activeReels,
            selectedIcon: Icon(Icons.video_collection),
            onPressed: () {
              setState(() {
                activeHome =false;
                activeProfile =false;
                activeSearch =false;
                activePosts =false;
                activeReels = true;
              });
            },
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.person_outline),
            isSelected: activeProfile,
            selectedIcon: Icon(Icons.person),
            onPressed: () {
              setState(() {
                activeHome =false;
                activeReels =false;
                activeSearch =false;
                activePosts =false;
                activeProfile = true;
              });
            },
          ),
          label: '',
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      // showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      // elevation: BorderSide.strokeAlignInside,
    );
  }
}
