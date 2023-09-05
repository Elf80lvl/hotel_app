import 'package:app_test_vacancy/const/const.dart';
// import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class CardTitleWidget extends StatelessWidget {
  const CardTitleWidget({
    super.key,
    required this.title,
    // required this.data,
  });

  // final HotelInfoModel data;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          fontFamily: kFontFamilyDefault,
        ),
      ),
    );
  }
}
