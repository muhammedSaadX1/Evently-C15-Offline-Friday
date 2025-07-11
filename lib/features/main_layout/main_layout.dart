import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:evently_c15_offline_friday/features/main_layout/fav/fav_tab.dart';
import 'package:evently_c15_offline_friday/features/main_layout/home/home_tab.dart';
import 'package:evently_c15_offline_friday/features/main_layout/map/maps_tab.dart';
import 'package:evently_c15_offline_friday/features/main_layout/profile/profile_tab.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> _tabs = const [
    HomeTab(),
    MapsTab(),
    FavTab(),
    ProfileTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(),
      bottomNavigationBar: _buildBottomNavBar(),
      body: _tabs[selectedIndex],
    );
  }

  Widget _buildFab() {
    return FloatingActionButton(onPressed: () {}, child: Icon(Icons.add));
  }

  Widget _buildBottomNavBar() {
    return BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onTab,
        items: [
          BottomNavigationBarItem(
            icon: _buildBottomNavBarIcon(
              Icons.home_filled,
              Icons.home,
              selectedIndex == 0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildBottomNavBarIcon(
              Icons.location_on,
              Icons.location_on_outlined,
              selectedIndex == 1,
            ),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: _buildBottomNavBarIcon(
              Icons.favorite,
              Icons.favorite_border_outlined,
              selectedIndex == 2,
            ),
            label: "Fav",
          ),
          BottomNavigationBarItem(icon: _buildBottomNavBarIcon(
            Icons.person,
            Icons.person_2_outlined,
            selectedIndex == 3,
          ), label: "Profile"),
        ],
      ),
    );
  }

  Widget _buildBottomNavBarIcon(
    IconData selectedIcon,
    IconData unSelectedIcon,
    bool isSelected,
  ) {
    return Icon(isSelected ? selectedIcon : unSelectedIcon);
  }

  void _onTab(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
