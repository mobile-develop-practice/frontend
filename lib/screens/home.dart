import 'package:chat/pages/calls_page.dart';
import 'package:chat/pages/contacts_page.dart';
import 'package:chat/pages/messages_page.dart';
import 'package:chat/pages/notifications_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          }),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: (index) {
          pageIndex.value = index;
        },
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({Key? key, required this.onItemSelected})
      : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  __BottomNavigationBarState createState() => __BottomNavigationBarState();
}

class __BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      /* minimum: EdgeInsets.all(12), */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
            index: 0,
            isSelected: (selectedIndex == 0),
            lable: 'Messages',
            icon: CupertinoIcons.bubble_left_bubble_right_fill,
            onTap: handleItemSelected,
          ),
          _NavigationBarItem(
            index: 1,
            isSelected: (selectedIndex == 1),
            lable: 'Notifications',
            icon: CupertinoIcons.bell_solid,
            onTap: handleItemSelected,
          ),
          _NavigationBarItem(
            index: 2,
            isSelected: (selectedIndex == 2),
            lable: 'Calls',
            icon: CupertinoIcons.phone_fill,
            onTap: handleItemSelected,
          ),
          _NavigationBarItem(
            index: 3,
            isSelected: (selectedIndex == 3),
            lable: 'Contacts',
            icon: CupertinoIcons.person_2_fill,
            onTap: handleItemSelected,
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    this.isSelected = false,
    required this.lable,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final String lable;
  final IconData icon;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          onTap(index);
        },
        child: SizedBox(
          height: 70,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? AppColors.secondary : null,
              ),
              Text(
                lable,
                style: isSelected
                    ? const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.secondary)
                    : const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ));
  }
}
