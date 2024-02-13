import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articlesList});
  final List<ArticleModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlesList.length,
        (context, index) => NewsTile(
          articleModel: articlesList[index],
        ),
      ),
    );
  }
}
