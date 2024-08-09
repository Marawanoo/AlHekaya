import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/app_bar_icon.dart';
import 'package:news/widgets/icon_text.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              centerTitle: true,
              title: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/images/350128296_675694891049596_7342086158320602888_n.png',
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: AppBarIcon(
                    icon: Icons.bookmark,
                  ),
                )
              ],
              leading: Padding(
                padding: EdgeInsets.only(left: 15),
                child: AppBarIcon(icon: Icons.chevron_left),
              ),
              backgroundColor: Colors.white,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  textDirection: TextDirection.rtl,
                  'مصر توجه شركات الطيران بتجنب التحليق في المجال الجوي الإيراني',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const IconText(
                        iconSize: 15,
                        textSize: 14,
                        title: ' 5H ago',
                        icon: Iconsax.clock,
                        color: Colors.grey) ,Text(
                      'رياضة',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                        'assets/images/wallpaperflare.com_wallpaper.jpg')),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '',
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
