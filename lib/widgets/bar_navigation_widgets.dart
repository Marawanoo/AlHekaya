import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';

class BarNavigationWidgets extends StatefulWidget {
  const BarNavigationWidgets({super.key, required this.pageController});

  final PageController pageController;
  @override
  State<BarNavigationWidgets> createState() => _BarNavigationWidgetsState();
}

class _BarNavigationWidgetsState extends State<BarNavigationWidgets> {
  int barIndex = 3;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          switch (value) {
            case 0:
              widget.pageController.jumpToPage(3);
              barIndex = value;
              break;
            case 1:
              widget.pageController.jumpToPage(2);
              barIndex = value;
              break;
            case 2:
              widget.pageController.jumpToPage(1);
              barIndex = value;
              break;
            case 3:
              widget.pageController.jumpToPage(0);
              barIndex = value;
              break;
            default:
              // فعل شيء آخر
              break;
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          key: Key('حسابي'),
          icon: Icon(Iconsax.user),
          label: 'حسابي',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          key: Key(
            'الأخبار المحفوظة',
          ),
          icon: Icon(Iconsax.heart),
          label: 'الأخبار المحفوظة',
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            key: Key('استكشاف'),
            icon: Icon(Iconsax.export),
            label: 'استكشاف'),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            key: Key('الرئيسة'),
            icon: Icon(Iconsax.home),
            label: 'الرئيسية')
      ],
      currentIndex: barIndex,
      backgroundColor: Colors.white,
      iconSize: 20,
      selectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      selectedItemColor: mainColor,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      unselectedItemColor: const Color.fromARGB(255, 65, 65, 65),
    );
  }
}
