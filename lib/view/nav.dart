import 'package:flutter/material.dart';
import 'package:movieticket/contants.dart';
class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    int myIndex=0;
    return Scaffold(
        body: Center(child: widgetlist[myIndex],),
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 18,
            unselectedFontSize: 12,
            onTap: (index){
              setState(() {
                myIndex=index;
                widgetlist[myIndex];
              });
            },
            currentIndex: myIndex,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,color: Colors.grey,),
                label: 'Home',
                activeIcon: Icon(Icons.home_work,color: Colors.red,),
                // label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist_outlined, color: Colors.grey,),
                activeIcon: Icon(Icons.check_box, color: Colors.red,),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.live_help, color: Colors.grey,),
                activeIcon: Icon(Icons.message_rounded, color: Colors.red,),
                label: 'Help',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded, color: Colors.grey,),
                activeIcon: Icon(Icons.account_circle_rounded, color: Colors.red,),
                label: 'My Account',
              ),
            ]),
      );
  }
}
