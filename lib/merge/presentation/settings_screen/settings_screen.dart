import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 30, right: 20, bottom: 30),
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
                              child: Text("Settings",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleMediumGray90003)),
                          Container(
                              margin: getMargin(top: 24),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup45,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 11, top: 3, bottom: 4),
                                    child: Text("Notifications",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallGray90004)),
                                Spacer(),
                                CustomSwitch(
                                    margin: getMargin(top: 3, bottom: 2),
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      isSelectedSwitch = value;
                                    })
                              ])),
                          Container(
                              margin: getMargin(top: 10),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgIconBlueGray800,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 11, top: 3, bottom: 4),
                                    child: Text("Dark mode",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallGray90004)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(38),
                                    margin: getMargin(top: 3, bottom: 2))
                              ])),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 10),
                              contentPadding: getPadding(top: 17, bottom: 17),
                              textStyle: CustomTextStyles.bodySmallGray90004,
                              hintText: "Password",
                              hintStyle: CustomTextStyles.bodySmallGray90004,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 13, right: 11, bottom: 13),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgIconBlueGray80001)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50)),
                              suffix: Container(
                                  padding:
                                      getPadding(top: 1, right: 2, bottom: 1),
                                  margin: getMargin(
                                      left: 30, top: 19, right: 23, bottom: 19),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(6))),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowright)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50)),
                              obscureText: true,
                              filled: true,
                              fillColor: theme.colorScheme.onPrimaryContainer),
                          Container(
                              margin: getMargin(top: 10),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLock,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 11, top: 5, bottom: 2),
                                            child: CustomRadioButton(
                                                width: getHorizontalSize(257),
                                                text: "Logout",
                                                iconSize: getHorizontalSize(12),
                                                value: "Logout",
                                                groupValue: radioGroup,
                                                margin: getMargin(
                                                    left: 11,
                                                    top: 5,
                                                    bottom: 2),
                                                textStyle: CustomTextStyles
                                                    .bodySmallGray90004,
                                                isRightCheck: true,
                                                onChange: (value) {
                                                  radioGroup = value;
                                                })))
                                  ])),
                          Spacer(),
                          CustomElevatedButton(
                              text: "Save".toUpperCase(),
                              margin: getMargin(bottom: 61),
                              buttonStyle: CustomButtonStyles.outlineIndigo2002d
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              getHorizontalSize(213),
                                              getVerticalSize(50)))),
                              buttonTextStyle: CustomTextStyles
                                  .titleSmallOnPrimaryContainer_2,
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
