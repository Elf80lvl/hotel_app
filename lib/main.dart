import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/hotel_page/bloc/hotel_page_bloc.dart';
import 'package:app_test_vacancy/pages/hotel_page/hotel_page.dart';
import 'package:app_test_vacancy/data/themes.dart';
import 'package:app_test_vacancy/pages/room_page/bloc/room_page_bloc.dart';
import 'package:app_test_vacancy/pages/room_page/room_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HotelPageBloc(),
        ),
        BlocProvider(
          create: (context) => RoomPageBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Hotel App',
        theme: kThemeLight,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => const HotelPage(),
          '/room': (BuildContext context) => const RoomPage(),
          // '/reservation': (BuildContext context) => const ReservationPage(),
          // '/paid': (BuildContext context) => const PaidPage(),
        },
        // home: const HotelPage(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
