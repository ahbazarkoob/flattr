import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> images = [
  'assets/images/avatar1.png',
  'assets/images/avatar2.png',
  'assets/images/avatar3.png',
  'assets/images/avatar4.png',
  'assets/images/avatar5.png',
  'assets/images/avatar6.png',
  'assets/images/avatar7.png',
  'assets/images/avatar8.png'
];

List<Widget> carouselList1 = [
  Padding(
    padding: const EdgeInsets.only(bottom: 10.0, left: 4.0, right: 4.0),
    child: Container(
      height: 90,
      width: 90,
      child: Image.asset(images[0]),
    ),
  ),
  Padding(
    padding:const EdgeInsets.only(bottom: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90.44,
      width: 90.4,
      child: Image.asset(images[1]),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(bottom: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[2]),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(bottom: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[3]),
    ),
  ),
];

List<Widget> carouselList2 = [
  Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[4]),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[5]),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[6]),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
    child: Container(
            height: 90,
      width: 90,
      child: Image.asset(images[7],),
    ),
  ),
];