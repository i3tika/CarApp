import 'package:flutter/material.dart';
import 'package:myapp/core/images.dart';
import 'package:myapp/theme/app_fonts.dart';

import '../sogin_in/sogin_in.dart';
import '../theme/app_colors.dart';

class CarSCreen extends StatelessWidget {
  const CarSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppImages.car,
          ),
        ))),
        Padding(
          padding: const EdgeInsets.only(left: 136, top: 242),
          child: Image.asset(
            AppImages.tiira,
            width: 145,
            height: 59,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 628, left: 26),
          child: Text(
            'Rent your dream car from the\nBest Company',
            style: AppFonts.w600s26,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 725, left: 80),
          child: SizedBox(
              width: 243,
              height: 52,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SoginIn()));
                  },
                  child: Text('Get Started'))),
        ),
      ]),
    );
  }
}
