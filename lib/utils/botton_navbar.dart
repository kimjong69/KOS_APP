import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
            if (myIndex == 0) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('posts', (route) => false);
            } else if (myIndex == 1) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('chat-users-list', (route) => false);
            } else if (myIndex == 2) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('prof-profile', (route) => false);
            }
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 50,color: Colors.black,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message,size: 50,color: Colors.black,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 50,color: Colors.black,),
              label: ''),
        ]);
  }
}
