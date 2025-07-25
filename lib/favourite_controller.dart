

import 'package:get/get.dart';

class FavouriteController extends GetxController {

  RxList<String> fruitList = ['Orange', 'Apple' , 'Mangoes' , 'Bananna'].obs;

  //dynamic provide kr de , create empty list
  RxList tempFruitList = [].obs;

//  function make
//  dono function me value add ,
//  remove hoti hai any change ,
//  obs me listen ho jaye ga

  addToFavourite(String value){
    tempFruitList.add(value);
  }
  removeToFavourite(String value){
    tempFruitList.remove(value);
  }

}