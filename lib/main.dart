import 'package:app_test_vacancy/pages/hotel_page.dart';
import 'package:app_test_vacancy/data/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel App',
      theme: kThemeLight,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const HotelPage(),
        // '/room': (BuildContext context) => const RoomPage(),
        // '/reservation': (BuildContext context) => const ReservationPage(),
        // '/paid': (BuildContext context) => const PaidPage(),
      },
      // home: const HotelPage(),
    );
  }
}
