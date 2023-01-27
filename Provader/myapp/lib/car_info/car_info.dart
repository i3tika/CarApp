import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/car_info/widget/car_static.dart';
import 'package:myapp/core/images.dart';
import 'package:myapp/models/car_models.dart';
import 'package:myapp/theme/app_colors.dart';
import 'package:myapp/theme/app_fonts.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key, required this.model});
  @override
  final CarModel model;

  @override
  State<CarInfo> createState() => _CarInfoState();
}

int counter = 0;

class _CarInfoState extends State<CarInfo> {
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.berez,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                    color: AppColors.berez,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(40),
                      // topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    )),
              ),
              const
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child:  Text(
                  'TIIRA',
                  style: AppFonts.w400s160,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(widget.model.image),
              )
            ]),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 26,
                  ),
                  Text(
                    widget.model.title,
                    style: AppFonts.w400s16.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(
                    width: 176,
                  ),
                  Text(
                    '\$',
                    style: AppFonts.w700s12.copyWith(color: AppColors.red),
                  ),
                  Text(
                    widget.model.price.toString(),
                    style: AppFonts.w700s12.copyWith(color: AppColors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // controller: ScrollControll,
                  shrinkWrap: true,
                  children: <Widget>[
                    Row(
                      children: const [
                        InfoCar(
                          title: 'Transition',
                          text: 'Automatic',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InfoCar(
                          title: 'Speed',
                          text: ' 200kmph',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InfoCar(
                          title: 'Transition',
                          text: 'Automatic',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Text(
                'RENDER',
                style: AppFonts.w400s16.copyWith(color: AppColors.darkblue),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  AppImages.avatar,
                  width: 48,
                  height: 47,
                ),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  'Lorem Ipsum',
                  style: AppFonts.w400s12.copyWith(color: AppColors.darkblue),
                ),
                const SizedBox(
                  width: 190,
                ),
                Image.asset(
                  AppImages.commit,
                  width: 34,
                  height: 32,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  AppImages.call,
                  width: 23,
                  height: 30,
                ),
              ],
            ),
            const
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _incrementCounter();
                  },
                  child: const CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                ),
                const
                SizedBox(
                  width: 5,
                ),
                Text(
                  '$counter',
                  style: AppFonts.w700s20.copyWith(color: AppColors.black),
                ),
                const
                SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: (() {
                      _minusCounter();
                    }),
                    child: CircleAvatar(
                      child: Icon(Icons.exposure_minus_1),
                    )),
              ],
            ),const
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _minusCounter() {
    setState(() {
      counter--;
      
    });
  }
}
