import 'package:eventapp/Features/CreateEvent/CreateEvent.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/FavoritesScreen.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/HomeScreen.dart';
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

  final List<Widget> tabs = const [
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
          Navigator.pushReplacementNamed(context, routesManager.createEvent);
        },
        backgroundColor: ColorsMang.LightBlue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorsMang.LightBlue,
        shape:  CircularNotchedRectangle(),
        notchMargin: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side
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
