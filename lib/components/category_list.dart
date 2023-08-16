import 'package:eventsappflutter/constans.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kCategories.length,
        itemBuilder: (context, index) {
          String activeEvent = "Music";
          FontWeight weight = activeEvent == kCategories[index]
              ? FontWeight.bold
              : FontWeight.normal;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: 110,
              decoration: BoxDecoration(
                  color: kGrayColor, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  kCategories[index],
                  style: kTitleStyle.copyWith(fontWeight: weight),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
