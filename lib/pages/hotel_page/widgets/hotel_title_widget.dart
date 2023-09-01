import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class HotelTitleWidget extends StatelessWidget {
  const HotelTitleWidget({
    super.key,
    required this.data,
  });

  final HotelInfoModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.name,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'SF-Pro-Display',
      ),
    );
  }
}
