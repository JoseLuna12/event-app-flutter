import 'package:eventsappflutter/constans.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarHome extends StatelessWidget {
  const BottomNavigationBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: kPrimary,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.house_rounded,
              color: Colors.white,
            ),
            Icon(
              Icons.airplane_ticket_rounded,
              color: Colors.white,
            ),
            Icon(
              Icons.add_location_alt_rounded,
              color: Colors.white,
            ),
            Icon(
              Icons.settings_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
