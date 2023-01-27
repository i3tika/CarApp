import 'package:flutter/material.dart';
import 'package:myapp/car_two_screen/car_two_screen.dart';

import '../models/car_models.dart';

class CarProvider extends ChangeNotifier {
  List<CarModel> cars = data;

  List<CarModel> basket = [];

  void addToBasket({required CarModel model}) {
    basket.add(model);
    basket = basket.toSet().toList();
 

    notifyListeners();
  }



  void removeFromBasket({required CarModel model}) {
    basket.remove(model);
    notifyListeners();
  }
}



