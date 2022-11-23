import 'package:flutter/material.dart';

// model data that is used in navigation bottom bar\\
// .................................................\\

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

// button data that is used in explore information screen in property type \\
// ...........................................................................\\
class PropertyTypeButtonData {
  final String title;

  PropertyTypeButtonData({required this.title});
}

List<PropertyTypeButtonData> propertyButtons = [
  PropertyTypeButtonData(title: 'Residential'),
  PropertyTypeButtonData(title: 'Plots'),
  PropertyTypeButtonData(title: 'Commercial'),
];

// Sub button data that is used in explore information screen in property type\\
// ...........................................................................\\
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

// Bed numbers data that is used in explore information screen in Bed section\\
// ...........................................................................\\
class BedTypeButtonData {
  final String title;

  BedTypeButtonData({required this.title});
}

List<BedTypeButtonData> appartmentBeds = [
  BedTypeButtonData(title: 'Studio'),
  BedTypeButtonData(title: 'Any'),
  BedTypeButtonData(title: '1'),
  BedTypeButtonData(title: '2'),
  BedTypeButtonData(title: '3'),
  BedTypeButtonData(title: '4'),
  BedTypeButtonData(title: '5'),
  BedTypeButtonData(title: '6'),
  BedTypeButtonData(title: '7+'),
];

// Bed numbers data that is used in explore information screen in Bed section\\
// ...........................................................................\\

class BathTypeButtonData {
  final String title;

  BathTypeButtonData({required this.title});
}

List<BathTypeButtonData> totalBaths = [
  BathTypeButtonData(title: 'Any'),
  BathTypeButtonData(title: '1'),
  BathTypeButtonData(title: '2'),
  BathTypeButtonData(title: '3'),
  BathTypeButtonData(title: '4'),
  BathTypeButtonData(title: '5'),
  BathTypeButtonData(title: '6'),
  BathTypeButtonData(title: '7+'),
];

// Bed numbers data that is used in explore information screen in Bed section\\
// ...........................................................................\\
class AppartmentTypeButtonData {
  final String title;

  AppartmentTypeButtonData({
    required this.title,
  });
}

List<AppartmentTypeButtonData> appartmentType = [
  AppartmentTypeButtonData(title: 'All'),
  AppartmentTypeButtonData(title: 'Furnished'),
  AppartmentTypeButtonData(title: 'Unfurnished'),
];

// Bed numbers data that is used in explore information screen in Bed section\\
// ...........................................................................\\