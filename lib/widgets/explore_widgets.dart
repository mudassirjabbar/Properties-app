import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:properties_app/widgets/navbar_widgets.dart';

class SelectionBox extends StatelessWidget {
  final Image image;
  final String title;
  const SelectionBox({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      focusColor: Color(0xff00D2AA),
      highlightColor: Color(0xff00D2AA),
      hoverColor: Color(0xff00D2AA),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            image,
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarContainer extends StatefulWidget {
  const NavBarContainer({super.key});

  @override
  State<NavBarContainer> createState() => _NavBarContainerState();
}

class _NavBarContainerState extends State<NavBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: const Color(0xffF3F2F2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NavBarItems(icon: Icons.search, text: 'Explore'),
          NavBarItems(icon: Icons.favorite_border_sharp, text: 'Whilist'),
          NavBarItems(icon: Icons.chat_outlined, text: 'Chat'),
          NavBarItems(icon: Icons.list, text: 'Listings'),
          NavBarItems(icon: Icons.person_outline, text: 'Account'),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
