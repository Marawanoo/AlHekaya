import 'package:get/get.dart';
import 'package:news/core/api/api_consumer.dart';
import 'package:news/core/api/api_key.dart';
import 'package:news/home_view/model/news_model.dart';

class NewsController extends GetxController {
  final ApiConsumer apiConsumer;
  RxList topArticlesList = [].obs;
  RxList generalArticlesList = [].obs;
  String category = 'الكل';
  RxBool isLoading = true.obs;
  NewsController({required this.apiConsumer});

  @override
  void onInit() {
    super.onInit();
    getTopNews();
    getGeneralNews('general', 'الكل');
  }

  getTopNews() async {
    isLoading.value = true;
    List<dynamic> articles =
        await apiConsumer.get('top-headlines?language=ar&apiKey=$apiKey');
    for (var article in articles) {
      NewsModel news = NewsModel.fromJson(article);
      topArticlesList.add(news);
    }
    isLoading.value = false;
  }

  getGeneralNews(String selectCategory, String category) async {
    isLoading.value = true;
    generalArticlesList.clear();
    this.category = category;
    List<dynamic> articles = await apiConsumer.get(
        'top-headlines?language=ar&category=$selectCategory&apiKey=$apiKey');
    for (var article in articles) {
      NewsModel news = NewsModel.fromJson(article);
      generalArticlesList.add(news);
    }
    isLoading.value = false;
  }
}
