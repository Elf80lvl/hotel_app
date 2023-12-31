import 'dart:convert';

class BookingInfoModel {
  final int id;
  final String hotelName;
  final String hotelAdress;
  final int horating;
  final String ratingName;
  final String departure;
  final String arrivalCountry;
  final String tourDateStart;
  final String tourDateStop;
  final int numberOfNights;
  final String room;
  final String nutrition;
  final int tourPrice;
  final int fuelCharge;
  final int serviceCharge;

  BookingInfoModel({
    required this.id,
    required this.hotelName,
    required this.hotelAdress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  factory BookingInfoModel.fromRawJson(String str) =>
      BookingInfoModel.fromJson(json.decode(str));

  factory BookingInfoModel.fromJson(Map<String, dynamic> json) =>
      BookingInfoModel(
        id: json["id"],
        hotelName: json["hotel_name"],
        hotelAdress: json["hotel_adress"],
        horating: json["horating"],
        ratingName: json["rating_name"],
        departure: json["departure"],
        arrivalCountry: json["arrival_country"],
        tourDateStart: json["tour_date_start"],
        tourDateStop: json["tour_date_stop"],
        numberOfNights: json["number_of_nights"],
        room: json["room"],
        nutrition: json["nutrition"],
        tourPrice: json["tour_price"],
        fuelCharge: json["fuel_charge"],
        serviceCharge: json["service_charge"],
      );
}
