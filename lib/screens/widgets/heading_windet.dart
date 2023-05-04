import 'package:flutter/material.dart';
import 'package:ui_task/common/style/colors.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.heading,
    required this.textButton,
    required this.onPressed,
  });
  final String heading;
  final String textButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: AppColor.themeColor,
          ),
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
