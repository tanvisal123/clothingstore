import 'package:ClothesShop/Models/GridModel.dart';
import 'package:ClothesShop/Views/HomeClothesDetail.dart';
import 'package:ClothesShop/Widgets/CategoriesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
class HomeClothes extends StatelessWidget {
  const HomeClothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
               BuildClothesBar(),
               Container(
                margin: const EdgeInsets.all(10),
                child: const SizedBox(
                  height: 90,
                 // color: Colors.amber,
                  child: CategoriesPage()
                ),
               ),
                BuildBestSale()
              ],
            ),
          )),
      )
    );
  }
}
Widget BuildBestSale(){
  return Container(
   margin: const EdgeInsets.all(10),
   decoration:  BoxDecoration(
     color: Colors.grey.withOpacity(0.2),
     borderRadius: const BorderRadius.only(
       topLeft: Radius.circular(20),
       topRight: Radius.circular(20)
     ),
   ),
   child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               'Best Sale Product',
               style: GoogleFonts.acme(
                 fontSize: 22
               )
             ),
             Text(
               'See more',
               style: GoogleFonts.acme(
                 fontSize: 18,
                 color:const  Color.fromARGB(255, 48, 212, 133)
               )
             ),
           ],
         ),
       ),
       const SizedBox(height: 10,),
     
       GridView.count(
        childAspectRatio: 0.70,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
       // mainAxisSpacing: 8,
        //crossAxisSpacing: 8,
        children: List.generate(
          GridModel.listGrid.length, (index){
            var data = GridModel.listGrid[index];
            return InkWell(
              onTap: () {
                Get.off(HomeClothesDetail(
                  image: data.image,
                  image1: data.image1,
                  image2: data.image2,
                  image3: data.image3,
                  discription: data.discription,
                  price: data.price,
                ));
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                height: 400,
                width: 100,
                color: Colors.white,
                child: Column(
                  children: [
                   Stack(
                    alignment: Alignment.topRight,
                    children: [
                       Container(
                          height: 140,
                          decoration:  BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(data.image))
                          ), 
                        ),
                        const Icon(Icons.favorite_border),
                    ],
                   ),
                   Container(
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text(
                          data.type,
                          style: GoogleFonts.acme(
                            color: Colors.grey
                          )
                        ),
                        Text(
                          data.discription,
                          style: GoogleFonts.acme(
                            fontSize: 18
                          )
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            Text(
                              data.star,
                              style: GoogleFonts.acme(
                                color: Colors.grey
                              )
                            ),
                            const Spacer(),
                            Text(
                              data.price,
                              style: GoogleFonts.acme(
                                 color:const  Color.fromARGB(255, 48, 212, 133),
                                 fontSize: 22
                              )
                            ),
                          ],
                        )
                      ],
                    ),
                   )
                  ],
                ),
              ),
            );
          }),)
       
     ],
   ),
  );
}
Widget BuildClothesBar(){
  List<String> listAppBarImages=[
    'assets/images/App2.jpg',
    'assets/images/App1.jpg',
    'assets/images/App3.jpg'
  ];
  return Stack(
    children: [
      ImageSlideshow(
        autoPlayInterval: 3000,
          isLoop: true,
        children: List.generate(
          listAppBarImages.length, (index){
            return Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(listAppBarImages[index]))
            ),
          );
          },)
      ),
      Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1,color: Colors.grey)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  border: InputBorder.none
                ),
              ),
            ),
            // Shopping Bag
            Stack(
              children: [
                const SizedBox(
                  height: 30,
                  width: 38,
                  //color: Colors.amber,
                ),
                const Icon(
                  Icons.shopping_bag,
                  size: 30,
                  color: Colors.white,),
                Positioned(
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 18,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Colors.red,
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
             Stack(
              children: [
                Container(
                  height: 30,
                  width: 38,
                  //color: Colors.amber,
                ),
                const Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.white,),
                Positioned(
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 18,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '9+',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Positioned(
        top: 60,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#FASHION DAY',
                  style: GoogleFonts.acme()
                ),
                Text(
                  '80% OFF',
                  style: GoogleFonts.acme(
                    fontSize: 33
                  )
                ),
                Text(
                  'Discover fashion that submit to \nyour style',
                  style: GoogleFonts.acme(
                    color: Colors.black.withOpacity(0.5)
                  )
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:const  Color.fromARGB(255, 58, 57, 57),
                  ),
                  child: Text(
                  'Check this out',
                  style: GoogleFonts.acme(
                    color: Colors.white
                  )
                ),
                )
              ],
          ),
        ),
      )
      
      ],
    );
}