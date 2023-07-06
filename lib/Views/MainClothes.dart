import 'package:ClothesShop/Views/HomeClothes.dart';
import 'package:ClothesShop/Views/HomeSetting.dart';
import 'package:ClothesShop/Views/HomeVoucer.dart';
import 'package:ClothesShop/Views/HomeWallet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../Controllers/MainpageController.dart';
class MainClothes extends StatelessWidget {
   MainClothes({super.key});
   MainpageController controller = Get.put(MainpageController());
  List<Widget> listHome=[
    const HomeClothes(),
    const HomeVoucer(),
    const HomeWallet(),
    const HomeSetting()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: MainpageController(),
        builder: (controller) {
          return listHome[controller.getSelectedIndex()];
        },),
      
      bottomNavigationBar: GetBuilder(
        init: MainpageController(),
        builder: (controller) {
          return BottomNavigationBar(
        onTap: (index) {
          controller.setSelectedIndex(index);
        },
        currentIndex: controller.getSelectedIndex(),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor:const  Color.fromARGB(255, 4, 206, 145),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),label: 'Voucer'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),label: 'Wallet'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),label: 'Setting'
          ),
        ]);
        },)
    );
  }
}