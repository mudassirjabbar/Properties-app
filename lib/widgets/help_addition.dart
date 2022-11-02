import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 120,
      width: double.infinity,
      color: const Color(0xffF3F2F2),
      child: Column(
        children: [
          Flexible(child: Text('$_currentIndex')),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: NavBarItems(
                      icon: Icons.search,
                      text: 'Explore',
                      index: 0,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
                Flexible(
                  child: NavBarItems(
                      icon: Icons.favorite_border_sharp,
                      text: 'Whilist',
                      index: 1,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
                Flexible(
                  child: NavBarItems(
                      icon: Icons.chat_outlined,
                      text: 'Chat',
                      index: 2,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
                Flexible(
                  child: NavBarItems(
                      icon: Icons.list,
                      text: 'Listings',
                      index: 3,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
                Flexible(
                  child: NavBarItems(
                      icon: Icons.person_outline,
                      text: 'Account',
                      index: 4,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class NavBarItems extends StatefulWidget {
  final IconData icon;
  final String text;
  final int index;
  final Function onTap;
  const NavBarItems(
      {required this.icon,
      required this.text,
      required this.index,
      required this.onTap,
      super.key});

  @override
  State<NavBarItems> createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index);
      },
      child: SizedBox(
        height: double.infinity,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xff00D2AA),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Flexible(
              child: Icon(
                widget.icon,
                size: 40,
                color: const Color(0xff00D2AA),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Flexible(
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Color(0xff00D2AA),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
