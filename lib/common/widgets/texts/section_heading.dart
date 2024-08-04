import 'package:flutter/material.dart';

import '../../../utils/constants/text_strings.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.text,
    this.buttonText = TTexts.sectionHeaderDefault,
    this.textColor,
    this.showActionButton = false,
    this.onPressed,
  });

  final String text, buttonText;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
      ],
    );
  }
}
