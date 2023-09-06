import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_buyer_info.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_first_widget.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_second_widget.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/action_button.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:app_test_vacancy/widgets_common/bottom_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      bottomNavigationBar: BottomActionWidget(
        button: ActionButton(
          text:
              '${S.of(context).pay.capitalizeFirst()} ${data.tourPrice + data.fuelCharge + data.serviceCharge} ₽',
          onTap: () {
            BlocProvider.of<BookingPageBloc>(context)
                .add(BookingPageOnSubmitEvent());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            CardFirstWidget(data: data),
            const SizedBox(height: 8),
            CardSecondWidget(data: data),
            const SizedBox(height: 8),
            const CardBuyerInfo(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}