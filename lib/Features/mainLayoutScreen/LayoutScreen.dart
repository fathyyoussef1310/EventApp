import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/HomeScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/MapScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/Favorite_tab/FavoritesScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/profileScreen.dart';
import 'package:eventapp/core/ColorsMang.dart';
import 'package:eventapp/core/routesManager.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> _tabs = const [
    Homescreen(),
    Mapscreen(),
    Favoritesscreen(),
    Profilescreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height:60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, routesManager.createEvent);
          },
          backgroundColor: Theme.of(context).primaryColor,
          child:  Icon(Icons.add,size: 30,),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 9,
        color: ColorsMang.darkBlue,
        shape:  CircularNotchedRectangle(),
        child: SizedBox(
          height: 56,
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: ColorsMang.white,
            unselectedItemColor: Colors.white30,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() => _selectedIndex = index);
            },
            items:  [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                activeIcon: Icon(Icons.location_on),
                label: "Map",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                activeIcon: Icon(Icons.favorite),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            backgroundColor: Theme.of(context).bottomAppBarTheme.color,
          ),
        ),
      ),
    );
  }
}
