import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class RemoveWorkExperienceBottomsheet extends StatelessWidget {
  const RemoveWorkExperienceBottomsheet({Key? key})
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
          left: 21,
          top: 25,
          right: 21,
          bottom: 25,
        ),
        decoration: AppDecoration.fill10.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgVector56Gray700,
              height: getVerticalSize(
                4,
              ),
              width: getHorizontalSize(
                30,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 47,
              ),
              child: Text(
                "Remove Work Experience ?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                "Are you sure you want to delete this work experience?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
            CustomElevatedButton(
              text: "Continue Filling".toUpperCase(),
              margin: getMargin(
                top: 39,
                right: 16,
              ),
              buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  50,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
              alignment: Alignment.centerLeft,
            ),
            CustomElevatedButton(
              text: "Undo Changes".toUpperCase(),
              margin: getMargin(
                top: 10,
                right: 16,
              ),
              buttonStyle: CustomButtonStyles.fillDeeppurple10001.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  50,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
