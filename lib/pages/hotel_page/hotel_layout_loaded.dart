import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/gallery_widget2.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/hotel_adress_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/hotel_description_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/hotel_title_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/price_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/rating_tag_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/tags_widget.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:flutter/material.dart';

class HotelLayoutLoaded extends StatelessWidget {
  final HotelInfoModel data;

  const HotelLayoutLoaded({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          //*first card
          Container(
            decoration: kDecorationCardFirst,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GalleryWidget2(data: data),
                const SizedBox(height: 16),
                RatingTagWidget(data: data),
                const SizedBox(height: 16),
                HotelTitleWidget(data: data),
                const SizedBox(height: 8),
                HotelAdressWidget(data: data),
                const SizedBox(height: 16),
                PriceWidget(data: data),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SizedBox(height: 8),

          //*second card about the hotel
          Container(
            decoration: kDecorationCardSecond,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),

                  //*about the hotel text
                  Text(
                    S.of(context).about_the_hotel.capitalizeFirst(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontFamily: kFontFamilyDefault,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 16),

                  TagsWidget(data: data.peculiarities),

                  const SizedBox(height: 16),

                  HotelDescriptionWidget(data: data),

                  const SizedBox(height: 16),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
