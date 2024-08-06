import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';

class BarNavigationWidgets extends StatefulWidget {
  const BarNavigationWidgets(
      {super.key, required this.barSelect, required this.barIndex});
  final Color barSelect;
  final int barIndex;
  @override
  State<BarNavigationWidgets> createState() => _BarNavigationWidgetsState();
}

class _BarNavigationWidgetsState extends State<BarNavigationWidgets> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          switch (value) {
            // case 0:
            //   Navigator.pushReplacementNamed(context, profilePage);
            //   break;
            // case 1:
            //   Navigator.pushReplacementNamed(context, favoritePage);
            //   break;
            case 2:
              Navigator.pushNamed(context, exploreView);
              break;
            // case 3:
            //   Navigator.pushReplacementNamed(context, homePage);
            //   break;
            // default:
            //   // فعل شيء آخر
            //   break;
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          key: Key('حسابي'),
          icon: Icon(Iconsax.user),
          label: 'حسابي',
        ),
        BottomNavigationBarItem(
            key: Key("تواصل معنا"),
            icon: Icon(Iconsax.heart),
            label: 'إشارات مرجعية'),
        BottomNavigationBarItem(
            key: Key('استكشاف'), icon: Icon(Iconsax.export), label: 'استكشاف'),
        BottomNavigationBarItem(
            key: Key('الرئيسة'), icon: Icon(Iconsax.home), label: 'الرئيسية')
      ],
      currentIndex: widget.barIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      iconSize: 20,
      selectedLabelStyle: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Cairo'),
      selectedItemColor: widget.barSelect,
      unselectedLabelStyle: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Cairo'),
      unselectedItemColor: const Color.fromARGB(255, 65, 65, 65),
    );
  }
}
