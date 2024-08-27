import 'package:doctor_app/data/constants.dart';
import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/size_config.dart';
import 'package:flutter/material.dart';

class CategoriesVertical extends StatelessWidget {
  const CategoriesVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: getRelativeHeight(0.25),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.0,
          ),
          itemCount: Data.categoriesList.length,
          itemBuilder: (context, index) {
            final category = Data.categoriesList[index];
            return GridItem(
              icon: category.icon,
              label: category.title,
              index: index,
            );
          }),
    );
  }
}

class GridItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;

  const GridItem({
    required this.icon,
    required this.label,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kCategoriesPrimaryColor[index],
                kCategoriesSecondaryColor[index],
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(icon),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
