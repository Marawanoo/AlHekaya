import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20),
      width: 320,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(category.categoryImage),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken)),
      ),
      child: Text(
        category.categoryText,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w800, fontSize: 30),
      ),
    );
  }
}

// Container(
//   width: 200,
//   height: 200,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5), // Shadow color
//         spreadRadius: 5, // Spread radius
//         blurRadius: 7, // Blur radius
//         offset: Offset(0, 3), // Offset in x and y directions
//       ),
//     ],
//   ),
//   child: YourChildWidget(),
// )
