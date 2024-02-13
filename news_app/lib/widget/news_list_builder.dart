import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>>? future;
  @override
  void initState() {
    super.initState();
    
    future = NewsService(Dio()).getTopHeadlines(category: widget.category);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articlesList: snapshot.data!,
          );
        }
        if (snapshot.hasError) {
          return const SliverToBoxAdapter(child: Text('fy errroorrr'));
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          );
        }
      }),
    );
  }
}
