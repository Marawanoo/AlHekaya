import 'package:flutter/material.dart';

class HomeHeaderCardTitle extends StatelessWidget {
  const HomeHeaderCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodyLarge,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        "تهاني عيد مبارك: المسلمون في الولايات المتحدة وأجزاء أخرى من العالم");
  }
}
