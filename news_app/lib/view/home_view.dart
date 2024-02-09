import 'package:flutter/material.dart';
import 'package:news_app/data/category_data.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/category_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> catList = categoryList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange, fontSize: 24),
            )
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catList.length,
        itemBuilder: (context, index) => CategoryContainer(
          categoryModel: catList[index],
        ),
      ),
    );
  }
}
