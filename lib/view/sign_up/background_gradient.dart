import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-11.6923, 0.2338), // Approximated
              radius: 1.073, // Approximated
              colors: [
                Color(0xFF29A9DF),
                Color(0xFF6043C6),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-20.9619, -2.6651), // Approximated
              radius: 1.0913, // Approximated
              colors: [
                Color(0xff1581F5),
                Color(0xff5237A1),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x68000000),
                Colors.transparent,
              ],
              stops: [0, 1],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Color(0x4D000000),
              ],
              stops: [0, 1],
            ),
          ),
        ),
      ],
    );
  }
}