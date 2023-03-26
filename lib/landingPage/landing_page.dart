import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  bool clickedCentreFAB = false;
  int selectedIndex = 0;

  void updateTabSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                updateTabSelection(0);
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.home,
                color: selectedIndex == 0
                    ? Colors.lightBlueAccent
                    : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                updateTabSelection(1);
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.search,
                color: selectedIndex == 1
                    ? Colors.lightBlueAccent
                    : Colors.grey.shade400,
              ),
            ),
            const SizedBox(width: 50.0),
            IconButton(
              onPressed: () {
                updateTabSelection(2);
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.settings,
                color: selectedIndex == 2
                    ? Colors.lightBlueAccent
                    : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                updateTabSelection(3);
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.person,
                color: selectedIndex == 3
                    ?Colors.lightBlueAccent
                    : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
