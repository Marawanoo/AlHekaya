class NewsModel {
  final String image;
  final String title;
  final String author;
  final String publishedAt;
  final String description;

  NewsModel(
      {required this.image,
      required this.title,
      required this.author,
      required this.publishedAt,
      required this.description});

  factory NewsModel.fromJson(Map<String, dynamic> jsonData) {
    return NewsModel(
        image: jsonData['image_url'] ?? '',
        title: jsonData['title'] ?? '',
        author: jsonData['source_name'] ?? '',
        publishedAt: jsonData['pubDate'] ?? '',
        description: jsonData['description'] ?? jsonData['title']);
  }
  String getTimeAgo(String publishedAt) {
    DateTime publishedDate = DateTime.parse(publishedAt);
    Duration difference = DateTime.now().difference(publishedDate);

    if (difference.inSeconds < 60) {
      return ' منذ ${difference.inSeconds} ثانية ';
    } else if (difference.inMinutes < 60) {
      return '  منذ${difference.inMinutes} دقيقة';
    } else if (difference.inHours < 24) {
      return ' منذ ${difference.inHours} ساعة';
    } else {
      return ' منذ ${difference.inDays} يوم';
    }
  }
}

class NewsModelempty extends NewsModel {
  NewsModelempty(
      {required super.image,
      required super.title,
      required super.author,
      required super.publishedAt,
      required super.description});
}
