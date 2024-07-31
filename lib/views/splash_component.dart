import 'package:flutter/material.dart';
import 'package:news/main_variable.dart';

class SplachComponent extends StatelessWidget {
  const SplachComponent({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.widthRadius,
  });
  final String image;
  final String title;
  final String subTitle;
  final List<double> widthRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
      child: Stack(
        children: [
          Positioned(
            left: -10,
            top: 20,
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, loginView),
              child: const Text('تخطي',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.3)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.3,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.3),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: widthRadius[0],
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: widthRadius[1],
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: widthRadius[2],
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
