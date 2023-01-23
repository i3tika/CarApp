import 'package:flutter/material.dart';
import 'package:myapp/core/images.dart';
import 'package:myapp/sogin_in/widget/custon_textfield.dart';
import 'package:myapp/theme/app_fonts.dart';

import '../car_two_screen/car_two_screen.dart';
import '../theme/app_colors.dart';

class SoginIn extends StatefulWidget {
  const SoginIn({super.key});
  @override
  State<SoginIn> createState() => _SoginInState();
}

String? errorText;

class _SoginInState extends State<SoginIn> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(top: 102, left: 38),
              child: Text(
                'Sign In',
                style: AppFonts.w400s48.copyWith(
                  color: AppColors.black,
                ),
              )),
          SizedBox(
            height: 87,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: Text(
              'EMAIL OR PHONE',
              style: AppFonts.w400s16.copyWith(
                color: AppColors.greyblue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38, right: 39, bottom: 10),
            child: TextFieldWidget(
              controller: controllerEmail,
              text: 'Loremipsum@gmail.com',
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: Text(
              'PASSWORD',
              style: AppFonts.w400s16.copyWith(
                color: AppColors.greyblue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 38,
              right: 39,
            ),
            child: TextFiedlTwo(
              controller: controllerPassword,
              text: '**********',
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: SizedBox(
              width: 349,
              height: 52,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.greyblue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Car_Screen()));
                  },
                  child: Text(
                    'Log In',
                    style: AppFonts.w700s20.copyWith(color: AppColors.white),
                  )),
            ),
          ),
          //      Container(
          // width: 315,
          // height: 48,
          // //color: Colors.white,
          // decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(color: Colors.black, width: 10),
          //     borderRadius: BorderRadius.all(Radius.circular(10))),),
        ]),
      ),
    );
  }
}
