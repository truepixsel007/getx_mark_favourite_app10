import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'favourite_controller.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  //getx with controller create , initialise
  FavouriteController controller = Get.put(FavouriteController());

  //set state with
  // List<String> fruitList = ['Orange', 'Apple', 'Mangoes' , 'Bannana'];
  // List<String> tempFruitList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // full widget not rebuild , it is good 
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Toutorials'),
      ),
      body: ListView.builder(
        //set state with
          // itemCount: fruitList.length,

          itemCount: controller.fruitList.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){

              if(controller.tempFruitList.contains(controller.fruitList[index].toString())){
                // controller.tempFruitList.remove(controller.fruitList[index].toString());
                controller.removeToFavourite(controller.fruitList[index].toString());
              }else{
                // controller.tempFruitList.add(controller.fruitList[index].toString());
                controller.addToFavourite(controller.fruitList[index].toString());
              }
              // setState(() {
              //
              // });

            },
            // title: Text(index.toString()),
            title: Text(controller.fruitList[index].toString()),
            trailing: Obx(() =>
                Icon(
                  Icons.favorite,
                  color:  controller.tempFruitList.contains(controller.fruitList[index].toString()) ?
                  Colors.red :
                  Colors.white,
                ),
            )
          ),
        );
      }),
    );
  }
}
