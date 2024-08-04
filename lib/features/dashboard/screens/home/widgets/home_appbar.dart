import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/button/counter_icon_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppBarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.apply(color: TColors.white),
          )
        ],
      ),
      actions: [
        TCounterIcon(
          iconColor: TColors.white,
          onPressed: () {},
        ),
      ],
      showBackArrow: false,
    );
  }
}
