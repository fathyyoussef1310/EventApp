import 'package:eventapp/Features/CreateEvent/CreateEvent.dart';
import 'package:eventapp/Features/mainLayoutScreen/Favorite_tab/FavoritesScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/HomeScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/MapScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/profileScreen.dart';
import 'package:eventapp/core/ColorsMang.dart';
import 'package:eventapp/core/routesManager.dart';
import 'package:flutter/material.dart';

class Layoutscreen extends StatefulWidget {
  const Layoutscreen({super.key});

  @override
  State<Layoutscreen> createState() => _LayoutscreenState();
}

class _LayoutscreenState extends State<Layoutscreen> {
  int cIndex = 0;

   List<Widget> tabs = [
    Homescreen(),
    Mapscreen(),
    Favoritesscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[cIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, routesManager.createEvent);
        },
        backgroundColor: ColorsMang.LightBlue,
        child:Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorsMang.LightBlue,
        shape:  CircularNotchedRectangle(),
        notchMargin: 3,
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      cIndex == 0 ? Icons.home : Icons.home_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () => setState(() => cIndex = 0),
                  ),
                  IconButton(
                    icon: Icon(
                      cIndex == 1 ? Icons.location_on : Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () => setState(() => cIndex = 1),
                  ),
                ],
              ),
              // Right side
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      cIndex == 2 ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () => setState(() => cIndex = 2),
                  ),
                  IconButton(
                    icon: Icon(
                      cIndex == 3 ? Icons.person : Icons.person_outline,
                      color: Colors.white,
                    ),
                    onPressed: () => setState(() => cIndex = 3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
