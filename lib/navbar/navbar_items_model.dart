import 'package:flutter/material.dart';

// model data that is used in navigation bottom bar

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

// button data that is used in explore information screen in property type
class PropertyTypeButtonData {
  final String title;

  PropertyTypeButtonData({required this.title});
}

List<PropertyTypeButtonData> propertyButtons = [
  PropertyTypeButtonData(title: 'Residential'),
  PropertyTypeButtonData(title: 'Plots'),
  PropertyTypeButtonData(title: 'Commercial'),
];

// Sub button data that is used in explore information screen in property type
class PropertyTypeSubButtonData {
  final String title;

  PropertyTypeSubButtonData({required this.title});
}

List<PropertyTypeSubButtonData> subPropertyButtons = [
  PropertyTypeSubButtonData(title: 'condo'),
  PropertyTypeSubButtonData(title: 'townhouse'),
  PropertyTypeSubButtonData(title: 'house'),
  PropertyTypeSubButtonData(title: 'service appartment'),
];
