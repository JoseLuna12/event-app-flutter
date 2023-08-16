import 'package:eventsappflutter/constans.dart';
import 'package:eventsappflutter/model/user.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);

  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu_sharp),
            ActionNav(userData: user),
          ],
        ),
      ),
    );
  }
}

class ActionNav extends StatelessWidget {
  final User userData;
  const ActionNav({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 13),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const SizedBox(
              width: 130,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage(userData.photo),
        ),
      ],
    );
  }
}
