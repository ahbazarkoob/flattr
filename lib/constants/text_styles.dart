import 'dart:ui' as ui;

// shadow:
//
// 163D82, 30% opacity
//
// x:0, y:3, blur:0, spread:0
//
// 163D82, 30% opeacity

// GradientText(
// 'Hello Flutter',
// style: const TextStyle(fontSize: 40),
// gradient: LinearGradient(colors: [
// Colors.blue.shade400,
// Colors.blue.shade900,
// ]),
// ),

import 'package:flutter/material.dart';

const heading = TextStyle(
    fontFamily: "Figtree",
    fontWeight: FontWeight.w700,
    fontSize: 25.95,
    color: Colors.white);

const buttonTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
    fontFamily: "Figtree",
    color: Colors.white);

const handwritingTextStyle = TextStyle(
  fontFamily: 'PermanentMarker',
  fontSize: 28,
  color: Color(0xff69D6DD),
  shadows: [
    ui.Shadow(
      offset: ui.Offset(0, 3),
      color: Color(0xff163D82),
      blurRadius: 0
    )
  ],
  fontWeight: FontWeight.w600,
  letterSpacing: 2
);

const textStyleExtraLarge = TextStyle(
  fontVariations: [
    FontVariation.weight(700)
  ],
    fontSize: 24,
    fontFamily: "Figtree",
    color: Colors.white);

const textStyleLarge = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: "Figtree",
    color: Colors.white);

const buttonTextStyleLarge = TextStyle(
    fontVariations: [
      FontVariation.weight(700)
    ],
    fontSize: 16,
    fontFamily: "Figtree",
    color: Colors.white);