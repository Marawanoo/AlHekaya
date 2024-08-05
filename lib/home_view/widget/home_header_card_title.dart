import 'package:flutter/material.dart';

class HomeHeaderCardTitle extends StatelessWidget {
  const HomeHeaderCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff1b2047),
            height: 1.3),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        'Eid Mubarak wishes: Muslims in the US and other part of the');
  }
}
