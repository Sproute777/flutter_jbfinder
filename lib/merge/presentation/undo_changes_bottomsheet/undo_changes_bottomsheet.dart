import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class UndoChangesBottomsheet extends StatelessWidget {
  const UndoChangesBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

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
                "Undo Changes ?",
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
                "Are you sure you want to change what you entered?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
            CustomElevatedButton(
              text: "Continue Filling".toUpperCase(),
              margin: getMargin(
                top: 38,
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
