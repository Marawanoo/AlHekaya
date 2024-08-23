import 'package:get/get.dart';
import 'package:news/core/api/api_consumer.dart';
import 'package:news/core/api/api_key.dart';
import 'package:news/home_view/model/news_model.dart';

class NewsController extends GetxController {
  final ApiConsumer apiConsumer;
  RxList topArticlesList = [].obs;
  RxList generalArticlesList = [].obs;
  RxList searchArticlesList = [].obs;
  String category = 'الكل';
  RxBool isLoadingTopNews = true.obs;
  RxBool isLoadingGeneralNews = true.obs;
  RxBool isLoadingSearchNews = true.obs;
  NewsController({required this.apiConsumer});

  @override
  void onInit() {
    super.onInit();
    getTopNews();
    getGeneralNews('world', 'الكل');
  }

  getTopNews() async {
    isLoadingTopNews.value = true;
    List<dynamic> articles = await apiConsumer
        .get('latest?language=ar&apiKey=$apiKey&category=world');
    for (var article in articles) {
      NewsModel news = NewsModel.fromJson(article);
      topArticlesList.add(news);
    }
    isLoadingTopNews.value = false;
  }

  getGeneralNews(String selectCategory, String category) async {
    isLoadingGeneralNews.value = true;
    generalArticlesList.clear();
    this.category = category;
    List<dynamic> articles = await apiConsumer
        .get('latest?language=ar&category=$selectCategory&apiKey=$apiKey');
    for (var article in articles) {
      NewsModel news = NewsModel.fromJson(article);
      generalArticlesList.add(news);
    }
    isLoadingGeneralNews.value = false;
  }

  getSearchNews(String category, String textQ) async {
    isLoadingSearchNews.value = true;
    searchArticlesList.clear();
    category = 'الكل';
    List<dynamic> articles =
        await apiConsumer.get('latest?language=ar&apiKey=$apiKey&q=$textQ');
    for (var article in articles) {
      NewsModel news = NewsModel.fromJson(article);
      searchArticlesList.add(news);
    }
    isLoadingSearchNews.value = false;
  }
}
