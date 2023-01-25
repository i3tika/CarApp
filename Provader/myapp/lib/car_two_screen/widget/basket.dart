import 'package:flutter/material.dart';
import 'package:myapp/car_screen/car_screen.dart';
import 'package:myapp/car_two_screen/widget/car_shop.dart';
import 'package:myapp/models/car_models.dart';
import 'package:myapp/provideres/car_provider.dart';
import 'package:myapp/theme/app_colors.dart';
import 'package:myapp/theme/app_fonts.dart';
import 'package:provider/provider.dart';

class Basket extends StatelessWidget {
  Basket({super.key});

  List<CarModel> cars = [];

  @override
  Widget build(BuildContext context) {
    final vmodel = context.watch<CarProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.berez,
        elevation: 0,
        title: const Text(
          'Ваши избраные',
          // style: AppFonts.w700s20.copyWith(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          shrinkWrap: true,
          itemCount: vmodel.basket.length,
          gridDelegate:const
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: ((context, index) =>
              Car_Shop(model: vmodel.basket[index], onTap: () {}))),
    );
  }
}
