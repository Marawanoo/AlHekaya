import 'package:flutter/material.dart';
import 'package:news/models/articles_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              articlesModel.articleImage ??
                  'https://www.digitaltveurope.com/files/2016/06/bundesliga.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 130,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/sport.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 130,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            AssetImage('assets/images/avatar.avif'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        articlesModel.articleAuthor ?? 'Amr Adeb',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      articlesModel.articleTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const Text(
                    'Wed,05 July 2023 .Sports',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
