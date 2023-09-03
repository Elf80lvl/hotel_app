import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class HotelAdressWidget extends StatelessWidget {
  const HotelAdressWidget({
    super.key,
    required this.data,
  });

  final HotelInfoModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
        child: Text(
          data.adress,
          style: const TextStyle(
            color: kColorLink,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: kFontFamilyDefault,
          ),
        ),
      ),
    );
  }
}
