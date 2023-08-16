import 'package:eventsappflutter/components/bottom_nav_bar_event.dart';
import 'package:eventsappflutter/components/detail_nav_bar.dart';
import 'package:eventsappflutter/constans.dart';
import 'package:eventsappflutter/model/events.dart';
import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  final Event currentEvent;
  const EventDetailPage({super.key, required this.currentEvent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBarEvent(ticketPrice: currentEvent.ticket),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(currentEvent.image),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 500,
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: kTitleStyle,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(currentEvent.description)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_location_alt_sharp,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            currentEvent.country,
                            style:
                                const TextStyle(color: kGrayText, fontSize: 13),
                          ),
                        ),
                        Text(
                          currentEvent.location,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.calendar_month,
                        color: kPrimary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            currentEvent.date,
                            style:
                                const TextStyle(color: kGrayText, fontSize: 13),
                          ),
                        ),
                        Text(
                          currentEvent.location,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          EventNavBar(
            eventName: currentEvent.title,
          )
        ],
      ),
    );
  }
}
