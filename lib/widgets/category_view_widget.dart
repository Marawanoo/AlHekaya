import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_widget.dart';

class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key});

  final List<CategoryModel> categoryWidgetList = const [
    CategoryModel(
        categoryImage: 'assets/images/Business.jpg', categoryText: 'Business'),
    CategoryModel(
        categoryImage: 'assets/images/entertainment.jpg',
        categoryText: 'Entertamint'),
    CategoryModel(
        categoryImage: 'assets/images/health.jpg', categoryText: 'Health'),
    CategoryModel(
        categoryImage: 'assets/images/science.jpg', categoryText: 'Science'),
    CategoryModel(
        categoryImage: 'assets/images/sport.jpg', categoryText: 'Sports'),
    CategoryModel(
        categoryImage: 'assets/images/tech.jpg', categoryText: 'Technology'),
    CategoryModel(
        categoryImage: 'assets/images/weather.jpg', categoryText: 'Weather'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 380,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CategoryWidget(
            category: categoryWidgetList[index],
          );
        },
        itemCount: categoryWidgetList.length,
      ),
    );
  }
}
