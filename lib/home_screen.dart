import 'package:flutter/material.dart';

import 'navbar/navbar_item.dart';
import 'navbar/navbar_items_model.dart';
import 'tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return NavBarItem(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    isSelected: currentIndex == index,
                    title: navigationItems[index].title,
                    icon: navigationItems[index].icon,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
