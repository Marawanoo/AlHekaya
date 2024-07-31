import 'package:dio/dio.dart';
import 'package:news/models/articles_model.dart';
import 'package:news/services/api_key.dart';

class NewsServices {
  final dio = Dio();
  Future<List<ArticlesModel>> getNews() async {
    try {
      final Response response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=$apiKey&language=ar&q=sport');
      Map<String, dynamic> jsonData = response.data;
      final List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];
      for (var article in articles) {
        ArticlesModel art = ArticlesModel(
            articleTitle: article['title'],
            articleAuthor: article['author'],
            articleImage: article['urlToImage']);
        articlesList.add(art);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
