import 'package:meta/meta.dart';
import 'dart:convert';

class HotelInfoModel {
  final int id;
  final String name;
  final String adress;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final String description;
  final List<String> peculiarities;

  HotelInfoModel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.description,
    required this.peculiarities,
  });

  factory HotelInfoModel.fromRawJson(String str) =>
      HotelInfoModel.fromJson(json.decode(str));

  factory HotelInfoModel.fromJson(Map<String, dynamic> json) => HotelInfoModel(
        id: json["id"],
        name: json["name"],
        adress: json["adress"],
        minimalPrice: json["minimal_price"],
        priceForIt: json["price_for_it"],
        rating: json["rating"],
        ratingName: json["rating_name"],
        imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
        description: json["about_the_hotel"]["description"],
        peculiarities: List<String>.from(
            json["about_the_hotel"]["peculiarities"].map((x) => x)),
      );
}




// class HotelInfoModel {
//   String? name;
//   String? adress;
//   double? minimalPrice;
//   String? priceForIt;
//   double? rating;
//   String? ratingName;
//   List<String>? imgUrls;
//   String? description;
//   List<String>? peculiarities;

//   HotelInfoModel({
//     required this.name,
//     required this.adress,
//     required this.minimalPrice,
//     required this.priceForIt,
//     required this.rating,
//     required this.ratingName,
//     required this.imgUrls,
//     required this.description,
//     required this.peculiarities,
//   });
// }
