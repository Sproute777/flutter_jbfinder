import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({Key? key}) : super(key: key);

  TextEditingController group140Controller = TextEditingController();

  TextEditingController group141Controller = TextEditingController();

  TextEditingController group142Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray70001,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Update Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray90003)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("Old Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: group140Controller,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 8, right: 20, bottom: 8),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgCheckmarkBlueGray500)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          obscureText: true,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("New Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: group141Controller,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 8, right: 20, bottom: 8),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgCheckmarkBlueGray500)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          obscureText: true,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("Confirm Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray90003)),
                      CustomTextFormField(
                          controller: group142Controller,
                          margin: getMargin(top: 10),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 8, right: 20, bottom: 8),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgCheckmarkBlueGray500)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          obscureText: true,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Update".toUpperCase(),
                          margin: getMargin(bottom: 61),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002d
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(getHorizontalSize(213),
                                          getVerticalSize(50)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimaryContainer_2,
                          alignment: Alignment.center)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
