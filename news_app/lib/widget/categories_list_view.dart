import 'package:flutter/material.dart';
import 'package:news_app/data/category_data.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/category_container.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> catList = categoryList;
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catList.length,
        itemBuilder: (context, index) => CategoryContainer(
          categoryModel: catList[index],
        ),
      ),
    );
  }
}
