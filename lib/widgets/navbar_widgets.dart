import 'package:flutter/material.dart';

class NavBarItems extends StatefulWidget {
  final IconData icon;
  final String text;
  const NavBarItems({required this.icon, required this.text, super.key});

  @override
  State<NavBarItems> createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: SizedBox(
        height: double.infinity,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 5,
              decoration: const BoxDecoration(
                color: Color(0xff00D2AA),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              widget.icon,
              size: 40,
              color: const Color(0xff00D2AA),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.text,
              style: const TextStyle(
                color: Color(0xff00D2AA),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
