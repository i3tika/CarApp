import 'package:flutter/material.dart';

import '../../core/images.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Car_Shop extends StatelessWidget {
  const Car_Shop({
    Key? key,
    // required this.title,
    required this.carimages,
    required this.titlecar,
    required this.pricecar,
    required this.onTap,
  }) : super(key: key);
  // final String title;
  final String carimages;
  final String titlecar;
  final int pricecar;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
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
                Image.asset(carimages),
                Text(
                  // 'TESLA'
                  titlecar,
                  style: AppFonts.w400s11.copyWith(color: AppColors.darkblue),
                ),
                Text(
                  '\$$pricecar par dya',
                  style: AppFonts.w400s10,
                ),
                Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.heart_broken,
                      color: AppColors.red,
                    ),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: AppColors.darkblue,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
