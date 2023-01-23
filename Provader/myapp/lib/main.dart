import 'package:flutter/material.dart';
import 'package:myapp/car_screen/car_screen.dart';
import 'package:myapp/sogin_in/sogin_in.dart';

import 'car_two_screen/car_two_screen.dart';

void main() {
  runApp(const Provader());
}

class Provader extends StatelessWidget {
  const Provader({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Car_Screen(),
      home: CarSCreen(),
    );
  }
}

//how can make post request in flutter