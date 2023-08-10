import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';
import 'package:the_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Notifications2ItemWidget extends StatelessWidget {
  const Notifications2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.1,
      child: Container(
        margin: getMargin(
          bottom: 591,
        ),
        padding: getPadding(
          all: 20,
        ),
        decoration: AppDecoration.fill19.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 40,
                  width: 40,
                  padding: getPadding(
                    all: 7,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle1,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgOverflowmenuBlueGray70001,
                  height: getSize(
                    20,
                  ),
                  width: getSize(
                    20,
                  ),
                  margin: getMargin(
                    top: 10,
                    bottom: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Container(
              width: getHorizontalSize(
                247,
              ),
              margin: getMargin(
                top: 3,
                right: 48,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Applications for ",
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Google inc",
                      style: theme.textTheme.labelLarge,
                    ),
                    TextSpan(
                      text: " have entered for company review",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    text: "Application details",
                    buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        143,
                      ),
                      getVerticalSize(
                        32,
                      ),
                    ))),
                    buttonTextStyle:
                        CustomTextStyles.bodySmallOnPrimaryContainer_1,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                      bottom: 5,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallBluegray40001,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
