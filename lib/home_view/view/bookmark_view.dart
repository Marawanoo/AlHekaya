import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Iconsax.search_normal),
            Text(
              'الأخبار المحفوظة',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
