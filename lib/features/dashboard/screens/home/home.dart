import 'package:flutter/material.dart';
import 'package:promptly/features/dashboard/screens/home/widgets/home_appbar.dart';
import 'package:promptly/features/dashboard/screens/home/widgets/home_categories.dart';
import 'package:promptly/utils/constants/colors.dart';
import 'package:promptly/utils/constants/image_strings.dart';
import 'package:promptly/utils/constants/sizes.dart';
import 'package:promptly/utils/constants/text_strings.dart';
import 'package:promptly/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../common/widgets/shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// SearchBar
                  TSearchContainer(
                    text: TTexts.homeSearchBarHint,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          text: TTexts.homeCategoriesSectionTitle,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
