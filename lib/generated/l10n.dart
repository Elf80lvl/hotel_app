// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `отель`
  String get hotel {
    return Intl.message(
      'отель',
      name: 'hotel',
      desc: '',
      args: [],
    );
  }

  /// `от`
  String get from {
    return Intl.message(
      'от',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `об отеле`
  String get about_the_hotel {
    return Intl.message(
      'об отеле',
      name: 'about_the_hotel',
      desc: '',
      args: [],
    );
  }

  /// `удобства`
  String get facilities {
    return Intl.message(
      'удобства',
      name: 'facilities',
      desc: '',
      args: [],
    );
  }

  /// `что включено`
  String get included {
    return Intl.message(
      'что включено',
      name: 'included',
      desc: '',
      args: [],
    );
  }

  /// `что не включено`
  String get not_included {
    return Intl.message(
      'что не включено',
      name: 'not_included',
      desc: '',
      args: [],
    );
  }

  /// `все необходимое`
  String get all_necessary {
    return Intl.message(
      'все необходимое',
      name: 'all_necessary',
      desc: '',
      args: [],
    );
  }

  /// `к выбору номера`
  String get to_room_selection {
    return Intl.message(
      'к выбору номера',
      name: 'to_room_selection',
      desc: '',
      args: [],
    );
  }

  /// `подробнее о номере`
  String get room_description {
    return Intl.message(
      'подробнее о номере',
      name: 'room_description',
      desc: '',
      args: [],
    );
  }

  /// `выбрать номер`
  String get choose_number {
    return Intl.message(
      'выбрать номер',
      name: 'choose_number',
      desc: '',
      args: [],
    );
  }

  /// `бронирование`
  String get booking {
    return Intl.message(
      'бронирование',
      name: 'booking',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
