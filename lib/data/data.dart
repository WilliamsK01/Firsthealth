import 'package:flutter/material.dart';

class Services {
  final String image;
  final Color color;
  Services({
    required this.image,
    required this.color,
  });
}

// Services List OF DATA

List<Services> servicesList = [
  Services(
    image: 'assets/icons/doctor-Icon.svg',
    color: const Color(0xffDCEDF9),
  ),
  Services(
    image: 'assets/icons/noun-pill.svg',
    color: const Color(0xffFAF0DB),
  ),
  Services(
    image: 'assets/icons/noun-medical-test.svg',
    color: const Color(0xffD6F6FF),
  ),
  Services(
    image: 'assets/icons/noun-corona.svg',
    color: const Color(0xffF2E3E9),
  ),
];

/// Upcoming Appointments

class Appointments {
  final String img;
  final String number;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.img,
    required this.number,
    required this.title,
    required this.subTitle,
  });
}

// Upcoming Appointments List OF DATA

List<Appointments> infoList = [
  Appointments(
    img: "assets/icons/ambulance1.svg",
    number: "185",
    title: "SAMU",
    subTitle: "Ambulances",
    color: const Color(0xFFA41C1C),
  ),
  Appointments(
    img: "assets/icons/firetruck.svg",
    number: "180",
    title: "Pompier",
    subTitle: "Sapeurs Pompiers",
    color: const Color(0xFFA41C1C),
  ),
  Appointments(
    img: "assets/icons/police-car.svg",
    number: "110/111/170",
    title: "Police",
    subTitle: "Police secours",
    color: const Color(0xFFA41C1C),
  ),
];
