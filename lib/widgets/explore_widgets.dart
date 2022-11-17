import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:properties_app/widgets/navbar_widgets.dart';
import 'package:properties_app/widgets/text_fields.dart';

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

// custom appBar for explore section

class CustomAppBar extends StatefulWidget {
  final IconButton iconButton;

  const CustomAppBar({
    super.key,
    required this.iconButton,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      decoration: const BoxDecoration(
        color: Color(0xff3C286E),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.iconButton,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              const Text(
                'Add Information',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppbarButtons(text: 'BUY', selected: false),
              const SizedBox(
                width: 10,
              ),
              AppbarButtons(text: 'RENT', selected: false),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: LocationField(
                      textEditingController: _locationController,
                      hintText: 'Search Your Location',
                      textInputType: TextInputType.text),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              AppbarButtons(text: 'Map', selected: false),
            ],
          ),
        ],
      ),
    );
  }
}

class AppbarButtons extends StatefulWidget {
  final String text;
  bool selected;

  AppbarButtons({
    super.key,
    required this.text,
    required this.selected,
  });

  @override
  State<AppbarButtons> createState() => _AppbarButtonsState();
}

class _AppbarButtonsState extends State<AppbarButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              widget.selected ? Color.fromRGBO(0, 210, 170, 0.3) : Colors.white,
          border: widget.selected
              ? Border.all(color: const Color(0xff00D2AA))
              : null,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 50,
        width: 100,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.selected
                  ? Colors.white
                  : Color.fromRGBO(41, 42, 46, 0.6),
            ),
          ),
        ),
      ),
    );
  }
}
