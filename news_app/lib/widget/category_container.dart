import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/view/category_view.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryContainer({super.key, required this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CategoryView(category: categoryModel.name.toLowerCase(),),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 90,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                categoryModel.image,
              ),
            ),
          ),
          child: Text(
            categoryModel.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
