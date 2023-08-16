import 'package:eventsappflutter/constans.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarEvent extends StatelessWidget {
  final double ticketPrice;

  const BottomNavigationBarEvent({Key? key, required this.ticketPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: kPrimary,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 100,
              child: Icon(
                Icons.arrow_circle_right,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Text(
                "Buy Ticket - \$$ticketPrice",
                style: kTitleStyle.copyWith(color: Colors.white, fontSize: 21),
              ),
            )
          ],
        ),
      ),
    );
  }
}
