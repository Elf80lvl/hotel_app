import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ActionButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll<double>(0),
        minimumSize: const MaterialStatePropertyAll<Size>(
          Size.fromHeight(kSizeActionButtonHeight),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusActionButton),
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
