import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:flutter/material.dart';

class BookingPageLoaded extends StatelessWidget {
  final BookingInfoModel data;
  const BookingPageLoaded({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kSizeAppBarHeight),
        child: AppBarCustomWidget(
          title: S.of(context).booking.capitalizeFirst(),
          isBackArrow: true,
        ),
      ),
      body: Center(child: Text(data.hotelName)),
    );
  }
}
