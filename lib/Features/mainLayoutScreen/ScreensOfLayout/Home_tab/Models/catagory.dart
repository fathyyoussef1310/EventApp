import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class categoryModel
{
  String name;
  IconData  icon;
  categoryModel({required this.name,required this.icon});
  static  List<categoryModel>catagoriesall=[
    categoryModel(name: "All", icon: Icons.all_inclusive),
    categoryModel(name: " Sports", icon: Icons.bike_scooter_outlined),
    categoryModel(name: "BirthDay", icon: Icons.cake),
    categoryModel(name: "Meetings", icon: Icons.laptop),
    categoryModel(name: "Gaming", icon: Icons.games),
    categoryModel(name: "Eating", icon: Icons.cookie),
    categoryModel(name: "Holiday", icon: Icons.holiday_village),
    categoryModel(name: "Exhibition", icon: Icons.workspace_premium_rounded),
    categoryModel(name: "BookClub", icon: Icons.book_online),
  ];
  static  List<categoryModel>catagoriesnoall=[
    categoryModel(name: " Sports", icon: Icons.bike_scooter_outlined),
    categoryModel(name: "BirthDay", icon: Icons.cake),
    categoryModel(name: "Meetings", icon: Icons.laptop),
    categoryModel(name: "Gaming", icon: Icons.games),
    categoryModel(name: "Eating", icon: Icons.cookie),
    categoryModel(name: "Holiday", icon: Icons.holiday_village),
    categoryModel(name: "Exhibition", icon: Icons.workspace_premium_rounded),
    categoryModel(name: "BookClub", icon: Icons.book_online),
  ];
}