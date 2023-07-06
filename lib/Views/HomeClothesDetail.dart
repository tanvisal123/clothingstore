import 'dart:math';

import 'package:ClothesShop/Controllers/MainpageController.dart';
import 'package:ClothesShop/Views/MainClothes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
class HomeClothesDetail extends StatelessWidget {
  final String image,image1,image2,image3,discription,price;
   HomeClothesDetail({
    super.key,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.discription,
    required this.price,
    });
  var f = NumberFormat("###.0#", "en_US");
  MainpageController controller = Get.put(MainpageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClothesDetailAppBar(),
              ClotheDetail(
                image: image,
                image1: image1,
                image2: image2,
                image3: image3,
                discription: discription,
                price: price
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            
                          }, 
                          icon: const Icon(
                            Icons.shop_rounded,
                            color: Colors.grey,
                          )),
                          Text(
                        'tokobaju.id',
                        style: GoogleFonts.acme(
                          color: Colors.grey
                        )
                      ),
                      ],
                     ),
                     Text(
                        'Camiseta gráfica para hombre',
                        style: GoogleFonts.acme(
                          color: Colors.black,
                          fontSize: 25
                        )
                      ),
                     const SizedBox(height: 5,),
                     Row(
                      children: [
                        const SizedBox(width: 10,),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          ' 4.9 Ratings',
                          style: GoogleFonts.acme(
                            color: Colors.grey,
                            fontSize: 18
                          )
                        ),
                        const SizedBox(width: 30,),
                        Text(
                          '2.3k+ Reviews',
                          style: GoogleFonts.acme(
                            color: Colors.grey,
                            fontSize: 18
                          )
                        ),
                        const SizedBox(width: 30,),
                        Text(
                          '2.9k+ Sold',
                          style: GoogleFonts.acme(
                            color: Colors.grey,
                            fontSize: 18
                          )
                        ),
                      ],
                     ),
                     const SizedBox(height: 20,),
                     Row(
                      children: [
                        const SizedBox(width: 50,),
                         Text(
                            'About Item',
                            style: GoogleFonts.acme(
                              color:const  Color.fromARGB(255, 48, 212, 133),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(width: 80,),
                          Text(
                            'Reviews',
                            style: GoogleFonts.acme(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            )
                          ),
                      ],
                     ),
                     Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        const Divider(
                          thickness: 1.5,
                        ),
                        Container(
                          height: 3,
                          width: 180,
                          color:const  Color.fromARGB(255, 48, 212, 133),
                        )
        
                      ],
                     ),
                     Row(
                      children: [
                        Text(
                          'Brand:',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            color: Colors.grey
                          )
                        ),
                        Text(
                          ' ChAmkpR',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            color: Colors.black
                          )
                        ),
                        const SizedBox(width: 100,),
                        Text(
                          'Color:',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            color: Colors.grey
                          )
                        ),
                        Text(
                          '  Aprikot',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            color: Colors.black
                          )
                        ),
                      ],
                     )
                  ],
                ),
              ),
        
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        color: Colors.grey.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Total Price',
                    style: GoogleFonts.acme(
                      fontSize: 15,
                      color: Colors.grey
                    )
                  ),
                  GetBuilder(
                    init: MainpageController(),
                    builder: (controller) {
                      return controller.totalPrice==0 ? Text(
                        price,
                        style: GoogleFonts.acme(
                          fontSize: 25,
                          color:const  Color.fromARGB(255, 48, 212, 133)
                        )
                      ) : Text(
                        '\$${f.format(controller.totalPrice)}',
                        style: GoogleFonts.acme(
                          fontSize: 25,
                          color:const  Color.fromARGB(255, 48, 212, 133)
                        )
                      ); 
                    },)
                ],
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                   Container(
                    width: 180,
                    //color: Colors.amber,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5), 
                  ),
                  InkWell(
                    onTap: () {
                      controller.SetQty();
                      controller.SettotalPrice(price);
                      
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 68,
                        height: 40,
                        decoration: BoxDecoration(
                          color:const  Color.fromARGB(255, 48, 212, 133),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Icon(Icons.shopping_bag,color: Colors.white,),
                            GetBuilder(
                              init: MainpageController(),
                              builder: (controller) {
                                return Text(
                                    controller.qty.toString(),
                                    style: GoogleFonts.acme(
                                      fontSize: 20,
                                      color: Colors.white
                                    )
                                );
                              },)
                          ],
                        ),
                      ),
                  ),
                     Positioned(
                       left: 60,
                       child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 22, 22, 22)
                        ),
                        child: Text(
                            'Buy Now',
                            style: GoogleFonts.acme(
                              fontSize: 18,
                              color: Colors.white
                            )
                          ),
                         ),
                     )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
Widget ClotheDetail({required String image,required String image1,required String image2,required String image3,required String discription,required String price}){
  List<String> listImage=[];
  listImage.clear();
  listImage.add(image);
  listImage.add(image1);
  listImage.add(image2);
  listImage.add(image3);
  String imageDetail;
  MainpageController controller = Get.put(MainpageController());
  return Container(
    margin: const EdgeInsets.all(15),
    //padding: const EdgeInsets.all(5),
    color: Colors.grey.withOpacity(0.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Detail
        Column(
          children: List.generate(
            4, (index){
              return InkWell(
                onTap: () {
                  controller.setImageDetail(listImage[index]);
                  controller.currentIndex=index;
                },
                child: GetBuilder(
                  init: MainpageController(),
                  builder: (controller) {
                    return Container(
                        margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                        height: 50,
                        width: 50,
                        decoration:  BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                            width: 2,
                            color: controller.currentIndex==index ? Color.fromARGB(255, 48, 212, 133)
                            : Colors.white),
                          image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(listImage[index]))
                        ),
                      );
                  },)
              );
            })
        ),
        GetBuilder(
          init: MainpageController(),
          builder: (controller) {
            return Container(
                height: 360,
                width: 302.5,
                decoration:  BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: controller.imageDetail=='' ? AssetImage(image) : AssetImage(controller.imageDetail)),
                ),
              );
          },)
      ],
    ),
  );
}
Widget ClothesDetailAppBar(){
  MainpageController controller = Get.put(MainpageController());
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
          InkWell(
            onTap: () {
              controller.setImageDetail('');
              controller.qty=1;
              controller.totalPrice=0;
              controller.currentIndex=0;
              Get.off(MainClothes());
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              
            }, 
            icon: const Icon(
              Icons.favorite,
              color: Colors.pink,
            )),
            IconButton(
            onPressed: () {
              
            }, 
            icon:  Icon(
              Icons.share,
              color: Colors.black.withOpacity(0.6),
            )),
            Stack(
              children: [
                const SizedBox(
                  height: 30,
                  width: 38,
                  //color: Colors.amber,
                ),
                 Icon(
                  Icons.shopping_bag,
                  size: 30,
                  color: Colors.black.withOpacity(0.6),),
                Positioned(
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 18,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                )
              ],
            ),
      ]
    ),
  );
}