import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_floating_button.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../app/widgets/scroll_scaffold.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ScrollScaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Jobspot",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Center(
              child: SizedBox(
                height: 200,
                child: SvgPicture.asset(
                  ImageConstant.imgGroup75,
                  fit: BoxFit.contain,
                  // height: 300,
                  // width: 310,
                ),
              ),
            ),
            SizedBox(height: 78),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Find Your\n",
                    style: theme.textTheme.displayMedium,
                  ),
                  TextSpan(
                    text: "Dream Job Here!",
                    style: CustomTextStyles.displayMediumOrangeA200.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15),
            Text(
              "Explore all the most exciting job roles basedon your interest and study major.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 60,
        width: 60,
        backgroundColor: PrimaryColors.indigo900,
        child: CustomImageView(
          svgPath: ImageConstant.imgArrowright,
          height: 30.0,
          width: 30.0,
        ),
      ),
    );
  }
}
