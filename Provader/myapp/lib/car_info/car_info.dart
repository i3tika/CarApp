import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/models/car_models.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key, required this.model});
  @override
  final CarModel model;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Column(
        children: [Image.asset(model.image)],
      ),
    );
  }
}
