import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/tourists_bloc/tourists_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/text_field_custom.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/service/number_to_words.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardTourist extends StatelessWidget {
  final int index;
  const CardTourist({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TouristsBloc, TouristsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: const EdgeInsets.all(kPaddingHorizApp),
            decoration: BoxDecoration(
              color: kColorCardBGlight,
              borderRadius: BorderRadius.circular(kBorderRadiusCard),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardTitleWidget(
                    isHorizPadding: false,
                    title:
                        '${NumberToWords.getTouristString(index + 1)} ${S.of(context).tourist}'),
                const SizedBox(height: 16),
                //*name
                TextFieldCustom(
                  // isValid: true,
                  onChanged: (text) {
                    BlocProvider.of<TouristsBloc>(context)
                        .add(TouristUpdateNameEvent(index: index, name: text));
                  },
                  hint: S.of(context).name.capitalizeFirst(),
                  errorText: S.of(context).name_invalid.capitalizeFirst(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
