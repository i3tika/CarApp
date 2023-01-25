import 'package:flutter/material.dart';
import 'package:myapp/models/car_models.dart';
import 'package:myapp/provideres/car_provider.dart';
import 'package:provider/provider.dart';
import '../../core/images.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Car_Shop extends StatelessWidget {
  const Car_Shop({
    Key? key,
    // required this.title,
    // required this.carimages,
    // required this.titlecar,
    // required this.pricecar,
    required this.model,
    required this.onTap,
  }) : super(key: key);
  // final String title;
  final CarModel model;
  // final String carimages;
  // final String titlecar;
  // final int pricecar;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final vmodel = context.read<CarProvider>();
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.contanerColors,
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 4,
                    color: AppColors.black.withOpacity(0.25))
              ],
              borderRadius: BorderRadius.circular(5)),
          width: 152,
          height: 176,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(model.image),
                Text(
                  // 'TESLA'
                  model.title,
                  style: AppFonts.w400s11.copyWith(color: AppColors.darkblue),
                ),
                Text(
                  '\$${model.price} par dya',
                  style: AppFonts.w400s10,
                ),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: (() {
                        vmodel.addToBasket(model: model);
                      }),
                      child: Icon(
                        Icons.heart_broken,
                        color: AppColors.red,
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        vmodel.removeFromBasket(model: model);
                      }),
                      child: Icon(
                        Icons.remove,
                        // Icons.arrow_circle_right_outlined,
                        color: AppColors.darkblue,
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
