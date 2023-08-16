import 'package:eventsappflutter/constans.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  const TitleSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: kTitleStyle),
          Text(
            "view all",
            style: kTitleStyle.copyWith(
              fontWeight: FontWeight.normal,
              color: kPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
