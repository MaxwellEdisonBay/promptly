import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.categoryFunIcon,
            title: "Fun",
            onTap: () {},
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
