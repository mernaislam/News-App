import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsService {
  final Dio dio;

  const NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f3692a3d686e4deb88d2b4981c22fd95&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        if (article['author'] != null &&
            article['urlToImage'] != null &&
            article['title'] != null &&
            article['description'] != null &&
            article['url'] != null) {
          articlesList.add(ArticleModel.fromJSON(article));
        }
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
