import 'package:ClothesShop/Models/CategoriesModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CategoriesModel.listCategories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var data = CategoriesModel.listCategories[index];
        return Column(
          children: [
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3)
                    ),
                    child: Icon(
                      data.iconData
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                data.categoriesTilte,
                style: GoogleFonts.acme(
                  color: Colors.grey
                )
        )
          ],
        );
      },);
  }
}