import 'package:flutter/material.dart';

class NavBarModel {
  final String title;
  final IconData icon;

  NavBarModel({
    required this.title,
    required this.icon,
  });
}

List<NavBarModel> navigationItems = [
  NavBarModel(title: 'Explore', icon: Icons.search),
  NavBarModel(title: 'Whilist', icon: Icons.favorite_border),
  NavBarModel(title: 'Chat', icon: Icons.chat_bubble_outline),
  NavBarModel(title: 'Listing', icon: Icons.list),
  NavBarModel(title: 'Account', icon: Icons.person),
];
