import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_figma_pro_v2/widgets/custom_floating_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 28,
            top: 52,
            right: 28,
            bottom: 52,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    right: 4,
                  ),
                  child: Text(
                    "Jobspot",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup75,
                height: getVerticalSize(
                  301,
                ),
                width: getHorizontalSize(
                  311,
                ),
                margin: getMargin(
                  left: 4,
                  top: 90,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 71,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Find Your  ",
                        style: theme.textTheme.displayMedium,
                      ),
                      TextSpan(
                        text: "Dream Job  Here!",
                        style:
                            CustomTextStyles.displayMediumOrangeA200.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 9,
                  bottom: 45,
                ),
                child: Text(
                  "Explore all the most exciting job roles based on your interest and study major.",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 60,
          width: 60,
          backgroundColor: appTheme.indigo900,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowright,
            height: getVerticalSize(
              30.0,
            ),
            width: getHorizontalSize(
              30.0,
            ),
          ),
        ),
      ),
    );
  }
}
