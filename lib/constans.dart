import 'package:eventsappflutter/model/events.dart';
import 'package:eventsappflutter/model/user.dart';
import 'package:flutter/material.dart';

const Color kBlackColor = Color.fromRGBO(32, 32, 32, 1);
const Color kBackground = Color.fromRGBO(214, 217, 223, 1);
const Color kGrayColor = Color.fromRGBO(223, 225, 228, 1);
const Color kPrimary = Color.fromRGBO(103, 115, 198, 1);
const Color kGrayText = Color.fromRGBO(209, 209, 209, 1);

const List<String> kCategories = [
  "Music",
  "Fashion",
  "Culinary",
  "Culture",
  "Cinema"
];

const TextStyle kTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

User user = User();

String description = "This is a description for the whole show";
String location = "Std. cupertino, syllicon valley";
List<Event> kEvents = [
  Event(
    country: "USA",
    date: "22 - april 2022",
    description: description,
    image: "images/crystalCastles.webp",
    location: location,
    ticket: 32.00,
    title: "Crystal Castles",
  ),
  Event(
    country: "Portugal",
    date: "22 - april 2022",
    description: description,
    image: "images/jcole.webp",
    location: location,
    ticket: 12.00,
    title: "J. Cole",
  ),
  Event(
    country: "China",
    date: "22 - april 2022",
    description: description,
    image: "images/gorillaz.jpeg",
    location: location,
    ticket: 65.00,
    title: "Gorillaz",
  ),
  Event(
    country: "France",
    date: "22 - april 2022",
    description: description,
    image: "images/joji.webp",
    location: location,
    ticket: 69.00,
    title: "Joji",
  ),
  Event(
    country: "Ecuador",
    date: "22 - april 2022",
    description: description,
    image: "images/Metallica.jpeg",
    location: location,
    ticket: 98.00,
    title: "Metallica",
  )
];
