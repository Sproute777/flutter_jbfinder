import 'package:flutter/material.dart';

import '../export.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
  bool isSelectedSwitch = false;

  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlueGray70001,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.centerLeft,
                              margin: getMargin(left: 20, top: 30),
                              onTap: () {
                                onTapImgArrowleft(context);
                              }),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 41),
                                  child: Text("Settings",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumGray90003))),
                          Container(
                              margin: getMargin(left: 20, top: 24, right: 20),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup45,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 3, bottom: 4),
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
                              margin: getMargin(left: 20, top: 10, right: 20),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIconBlueGray800,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 3, bottom: 4),
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
                              margin: getMargin(left: 20, top: 10, right: 20),
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
                              margin: getMargin(left: 20, top: 10, right: 20),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLock,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 11,
                                                top: 5,
                                                right: 3,
                                                bottom: 2),
                                            child: CustomRadioButton(
                                                width: getHorizontalSize(257),
                                                text: "Logout",
                                                iconSize: getHorizontalSize(12),
                                                value: "Logout",
                                                groupValue: radioGroup,
                                                margin: getMargin(
                                                    left: 11,
                                                    top: 5,
                                                    right: 3,
                                                    bottom: 2),
                                                textStyle: CustomTextStyles
                                                    .bodySmallGray90004,
                                                isRightCheck: true,
                                                onChange: (value) {
                                                  radioGroup = value;
                                                })))
                                  ])),
                          Spacer(),
                          SizedBox(
                              height: getVerticalSize(308),
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(
                                            left: 81, right: 81, bottom: 20),
                                        padding: getPadding(
                                            left: 90,
                                            top: 14,
                                            right: 90,
                                            bottom: 14),
                                        decoration: AppDecoration.fill22
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Save",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallOpenSansOnPrimaryContainer)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 29,
                                            top: 25,
                                            right: 29,
                                            bottom: 25),
                                        decoration: AppDecoration.fill10
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector56Primary,
                                                  height: getVerticalSize(4),
                                                  width: getHorizontalSize(30),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(2))),
                                              Padding(
                                                  padding: getPadding(top: 47),
                                                  child: Text("Log out",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text(
                                                      "Are you sure you want to leave?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              CustomElevatedButton(
                                                  text: "Yes".toUpperCase(),
                                                  margin: getMargin(top: 44),
                                                  buttonStyle: CustomButtonStyles
                                                      .outlineIndigo2002d
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      50)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer_2),
                                              CustomElevatedButton(
                                                  text: "Cancel".toUpperCase(),
                                                  margin: getMargin(
                                                      top: 10, bottom: 5),
                                                  buttonStyle: CustomButtonStyles
                                                      .fillDeeppurple10001
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      50)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer_2)
                                            ])))
                              ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
  Navigator.pop(context);
}
