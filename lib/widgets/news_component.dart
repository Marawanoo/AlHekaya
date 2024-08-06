import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../main_variable.dart';
import 'icon_text.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 125,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: space),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xfff9f9f9)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'أخبار: رياضة',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffb3b5bd),
                          height: 1.3),
                    ),
                    SizedBox(
                      height: space / 4,
                    ),
                    Text(
                      'يورو 2024',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff010a2f),
                          height: 1.3),
                    ),
                    Text(
                      textDirection: TextDirection.rtl,
                      maxLines: 2,
                      'مبابي "ليس على ما يرام بعد محمد صلاح',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff010a2f),
                          height: 1.3),
                    ),
                    SizedBox(
                      height: space / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconText(
                          title: ' 17th Jun ',
                          icon: Iconsax.calendar,
                          color: Color(0xffb3b5bd),
                        ),
                        SizedBox(
                          width: space * 2,
                        ),
                        IconText(
                          title: ' 09:21am ',
                          icon: Iconsax.clock,
                          color: Color(0xffb3b5bd),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                    fit: BoxFit.fill,
                    width: 100,
                    height: 100,
                    'assets/images/wallpaperflare.com_wallpaper.jpg'),
              ),
            ],
          ),
        ),
        const Positioned(
            left: 10,
            top: 20,
            child: Icon(
              size: 18,
              Iconsax.save_2,
              color: mainColor,
            ))
      ],
    );
  }
}
