import 'package:flutter/material.dart';

class TravelList {
  Icon icon;

  TravelList({required this.icon});

  static List<TravelList> travel = [
    TravelList(
        icon: Icon(
      Icons.directions_walk_rounded,
      size: 60,
    )),
    TravelList(
      icon: Icon(Icons.directions_boat_filled_sharp, size: 60),
    ),
    TravelList(
      icon: Icon(Icons.directions_bus, size: 60),
    ),
    TravelList(
      icon: Icon(Icons.train_rounded, size: 60),
    ),
    TravelList(
      icon: Icon(Icons.airplanemode_active_outlined, size: 60),
    ),
    TravelList(
      icon: Icon(Icons.pedal_bike, size: 60),
    ),
  ];
}
