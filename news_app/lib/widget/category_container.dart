import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryContainer({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                categoryModel.image,
                height: 120,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              categoryModel.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
