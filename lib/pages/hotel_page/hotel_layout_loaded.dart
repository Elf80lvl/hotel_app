import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class HotelLayoutLoaded extends StatelessWidget {
  // final double rating;
  // final String ratingName;
  // final String name;
  // final String adress;
  // final double minimalPrice;
  // final String priceForIt;
  // final List<String> imgUrls;
  // final List<String> peculiarities;
  // final String description;

  // const HotelLayoutLoaded({
  //   super.key,
  //   required this.rating,
  //   required this.ratingName,
  //   required this.name,
  //   required this.adress,
  //   required this.minimalPrice,
  //   required this.priceForIt,
  //   required this.imgUrls,
  //   required this.peculiarities,
  //   required this.description,
  // });
  final HotelInfoModel data;

  const HotelLayoutLoaded({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(data.name);
  }
}
