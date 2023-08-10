import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class RemoveLanguageBottomsheet extends StatelessWidget {
  const RemoveLanguageBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 26,
          top: 25,
          right: 26,
          bottom: 25,
        ),
        decoration: AppDecoration.fill10.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgVector56Gray90004,
              height: getVerticalSize(
                4,
              ),
              width: getHorizontalSize(
                30,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 45,
              ),
              child: Text(
                "Remove Indonesian ?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
              ),
              child: Text(
                "Are you sure you want to delete this Indonesian language?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
            CustomElevatedButton(
              text: "Continue Filling".toUpperCase(),
              margin: getMargin(
                left: 3,
                top: 43,
                right: 3,
              ),
              buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  50,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
            ),
            CustomElevatedButton(
              text: "Undo Changes".toUpperCase(),
              margin: getMargin(
                left: 3,
                top: 10,
                right: 3,
                bottom: 5,
              ),
              buttonStyle: CustomButtonStyles.fillDeeppurple10001.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  50,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
            ),
          ],
        ),
      ),
    );
  }
}
