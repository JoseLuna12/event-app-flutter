import 'package:eventsappflutter/model/events.dart';
import 'package:eventsappflutter/views/event.dart';
import 'package:flutter/material.dart';

class PopularEventsListView extends StatelessWidget {
  final List<Event> events;
  const PopularEventsListView({super.key, required this.events});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventSingle(
            event: events[index],
          );
        },
      ),
    );
  }
}

class EventSingle extends StatelessWidget {
  final Event event;
  const EventSingle({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailPage(currentEvent: event),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(event.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
