import 'package:eventsappflutter/components/bottom_nav_bar_home.dart';
import 'package:eventsappflutter/components/category_list.dart';
import 'package:eventsappflutter/components/nav_bar.dart';
import 'package:eventsappflutter/components/popular_events_listview.dart';
import 'package:eventsappflutter/components/title_section.dart';
import 'package:eventsappflutter/constans.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      bottomNavigationBar: const BottomNavigationBarHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Hello ${user.name}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Discover incredible events"),
            const TitleSection(title: "Popular Events"),
            PopularEventsListView(events: kEvents),
            const TitleSection(title: "Category Events"),
            const CategoryList(),
            const SizedBox(
              height: 15,
            ),
            PopularEventsListView(events: kEvents),
          ],
        ),
      ),
    );
  }
}
