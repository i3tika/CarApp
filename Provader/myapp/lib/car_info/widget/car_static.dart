import 'package:flutter/material.dart';
import 'package:myapp/theme/app_colors.dart';
import 'package:myapp/theme/app_fonts.dart';
import 'package:myapp/core/images.dart';


class InfoCar extends StatelessWidget {
  const InfoCar({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.contanerColors,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 4,
              color: AppColors.black.withOpacity(0.25),
            ),
          ]),

      width: 155,
      height: 89,
      // color: AppColors.whiteCont,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: AppFonts.w700s12.copyWith(color: AppColors.berez),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            text,
            style: AppFonts.w400s12.copyWith(color: AppColors.black),
          )
        ],
      ),
    );
  }
}