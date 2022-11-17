import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  bool isSelected;
  NavBarItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.isSelected = false});

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          border: Border(
              top: (BorderSide(
            width: 5,
            color: widget.isSelected
                ? const Color(0xff00D2AA)
                : Colors.transparent,
          ))),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 40,
              color: widget.isSelected
                  ? const Color(0xff00D2AA)
                  : const Color(0xffB7BCC4),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                color: widget.isSelected
                    ? const Color(0xff00D2AA)
                    : const Color(0xffB7BCC4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
