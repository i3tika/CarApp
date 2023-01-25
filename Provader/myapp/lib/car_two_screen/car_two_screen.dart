import 'package:flutter/material.dart';
import 'package:myapp/car_info/car_info.dart';
import 'package:myapp/car_two_screen/widget/basket.dart';
import 'package:myapp/car_two_screen/widget/car_shop.dart';
import 'package:myapp/car_two_screen/widget/custom_chip.dart';
import 'package:myapp/core/images.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/car_models.dart';
import 'package:myapp/provideres/car_provider.dart';
import 'package:myapp/theme/app_colors.dart';
import 'package:myapp/theme/app_fonts.dart';
import 'package:provider/provider.dart';

class Car_Screen extends StatefulWidget {
  const Car_Screen({super.key});

  @override
  State<Car_Screen> createState() => Car_ScreenState();
}

double blurRadius = 3;
double spreadRadius = 2;
List<String> title = ['family cars', 'Cheap cars', 'Luxuly cars'];
int selectedIndex = 0;
List<CarModel> data = [
  CarModel(image: AppImages.tesla, title: 'TESLA', price: 150),
  CarModel(image: AppImages.lamba, title: 'LAMBORGHINI', price: 550),
  CarModel(image: AppImages.rang, title: 'RANGE ROVER', price: 150),
  CarModel(image: AppImages.tyota, title: 'TOYOTA', price: 350),
  CarModel(image: AppImages.audi, title: 'AUDI Red A6', price: 180),
  CarModel(image: AppImages.tyotablack, title: 'TOYOTA', price: 100)
];

class Car_ScreenState extends State<Car_Screen> {
  @override
  Widget build(BuildContext context) {
    final vmodel = context.watch<CarProvider>();
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(
              AppImages.icons,
              width: 27,
              height: 17,
            ),
          );
        }),
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Basket()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: AppColors.black,
              ))
        ],
      ),
      body: Column(children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTapDown: (_) {
              blurRadius = 0;
              spreadRadius = 0;
              setState(() {});
            },
            onTapUp: (_) {
              blurRadius = 3;
              spreadRadius = 2;
              setState(() {});
            },
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('Простите это чип не работает'),
                        content: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                          ),
                        ),
                      ));
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: blurRadius,
                        spreadRadius: spreadRadius,
                        color: AppColors.black.withOpacity(0.6))
                  ]),
              child: Image.asset(
                AppImages.chi,
                width: 357,
                height: 158,
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            children: [
              CustomChip(
                title: title[0],
                isSelected: selectedIndex == 0,
                onSelected: (isSelected) {
                  selectedIndex = 0;
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 22,
              ),
              CustomChip(
                title: title[1],
                isSelected: selectedIndex == 1,
                onSelected: (isSelected) {
                  selectedIndex = 1;
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 22,
              ),
              CustomChip(
                title: title[2],
                isSelected: selectedIndex == 2,
                onSelected: (isSelected) {
                  selectedIndex = 2;
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 2,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: const EdgeInsets.only(right: 135),
          child: Text(
            'Cars Available Near You',
            style: AppFonts.w400s20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Car_Shop(),
        Expanded(
          child: GridView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Car_Shop(
                    model: vmodel.cars[index],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CarInfo(model: vmodel.cars[index])));
                    },
                    // carimages: data[index].image,
                    // titlecar: data[index].title,
                    // pricecar: data[index].price
                  )),
        )
      ]),
    );
  }
}
