import 'package:flutter/material.dart';

import '../../../dashboard/presentation/page/dashboard_page.dart';
import '../../../play/presentation/pages/play_page.dart';

int selectedIndex = 0;

const List<BottomNavigationBarItem> navBarList = [
  BottomNavigationBarItem(
    label: "Home",
    icon: Icon(Icons.home),
  ),
  BottomNavigationBarItem(
    label: "Game",
    icon: Icon(Icons.sports_esports),
  ),
  BottomNavigationBarItem(
    label: "Players",
    icon: Icon(Icons.groups_3),
  ),
  BottomNavigationBarItem(
    label: "Profile",
    icon: Icon(Icons.person),
  ),
];

const List<Widget> navBarPages = <Widget>[
  DashboardPage(),
  PlayPage(),
  Icon(
    Icons.not_accessible,
    size: 150,
  ),
  Icon(
    Icons.not_accessible,
    size: 150,
  ),
];
