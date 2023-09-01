import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.data,
  });

  final HotelInfoModel data;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${S.of(context).from} ${data.minimalPrice.toString()} ₽ ',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            data.priceForIt.toLowerCase(),
            style: const TextStyle(
              fontSize: 16,
              color: kColorTextSecondaryLight,
            ),
          ),
        ],
      ),
    );
  }
}
