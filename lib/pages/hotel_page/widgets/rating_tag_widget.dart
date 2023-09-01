import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingTagWidget extends StatelessWidget {
  const RatingTagWidget({
    super.key,
    required this.data,
  });

  final HotelInfoModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kColorRatingTagBG,
        borderRadius: BorderRadius.circular(5),
      ),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/star.svg'),
              const SizedBox(width: 6),
              Text(
                '${data.rating} ${data.ratingName}',
                style: const TextStyle(
                  color: kColorRatingTagPrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
