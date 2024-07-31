import 'package:flutter/material.dart';
import 'package:news/models/articles_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_view_widget.dart';

class NewsViewBuilder extends StatefulWidget {
  const NewsViewBuilder({super.key});

  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsViewWidget(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('Error'),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
