import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class RemoveEducationBottomsheet extends StatelessWidget {
  const RemoveEducationBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 29,
          top: 25,
          right: 29,
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
                top: 45,
              ),
              child: Text(
                "Remove Education ?",
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
                "Are you sure you want to delete this education?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
            CustomElevatedButton(
              text: "Continue Filling".toUpperCase(),
              margin: getMargin(
                top: 44,
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
                top: 10,
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
