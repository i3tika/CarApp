import 'package:flutter/material.dart';
import 'package:myapp/car_screen/car_screen.dart';
import 'package:myapp/provideres/car_provider.dart';
import 'package:myapp/sogin_in/sogin_in.dart';
import 'package:provider/provider.dart';

// import 'car_two_screen/car_two_screen.dart';

void main() {
  runApp(const Provader());
}

class Provader extends StatelessWidget {
  const Provader({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CarProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Car_Screen(),
        home: CarSCreen(),
      
      ),
    );
  }
}


