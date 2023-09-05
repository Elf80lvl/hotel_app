import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({
    super.key,
    required TextEditingController phoneController,
    required this.hint,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;
  final String hint;

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  final _phoneMask = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 8),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusTextField),
        color: kColorTextFieldBGlight,
        // color: Colors.red,
      ),
      child: Center(
        child: TextFormField(
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          // validator: (value) {
          //   if (value!.length < 10) {
          //     return 'phone error';
          //   }
          // },
          inputFormatters: [_phoneMask],
          onChanged: (value) {},
          controller: widget._phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            isDense: true,
            // contentPadding: const EdgeInsets.symmetric(
            //     horizontal: kPaddingHorizApp, vertical: kPaddingHorizApp),
            contentPadding: EdgeInsets.symmetric(
              horizontal: kPaddingHorizApp,
              vertical: 6.0,
            ),
            labelText: widget.hint,
            labelStyle: TextStyle(
              fontSize: 17,
              fontFamily: kFontFamilyDefault,
              color: kColorTextFieldTextSecondaryLight,
            ),
            // hintText: 'Phone',
            // hintStyle: TextStyle(
            //   fontSize: 17,
            //   fontFamily: kFontFamilyDefault,
            //   color: kColorTextFieldTextSecondaryLight,
            // ),
            filled: true,
            fillColor: kColorTextFieldBGlight,
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(kBorderRadiusTextField),
            ),
          ),
        ),
      ),
    );
  }
}
