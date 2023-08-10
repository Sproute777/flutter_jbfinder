import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class LevelOfEducationScreen extends StatelessWidget {
  LevelOfEducationScreen({Key? key}) : super(key: key);

  TextEditingController levelofeducatioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
                          padding: getPadding(top: 39),
                          child: Text("Level of Education",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      CustomTextFormField(
                          controller: levelofeducatioController,
                          margin: getMargin(top: 31),
                          contentPadding: getPadding(top: 11, bottom: 11),
                          textStyle: CustomTextStyles.bodySmallGray90003,
                          hintText: "Bachelor",
                          hintStyle: CustomTextStyles.bodySmallGray90003,
                          prefix: Container(
                              margin: getMargin(
                                  left: 15, top: 8, right: 10, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 8, right: 10, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text(
                              "Bachelor of Electronic Engineering (Indrustrial Electronics)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Bachelor of Information Technology",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text(
                              "Economics (Bachelor of Science), Psycology",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Container(
                          width: getHorizontalSize(281),
                          margin: getMargin(top: 28, right: 53),
                          child: Text(
                              "Bachelor of Arts (Hons) Mass Communication With Public Relations",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Bachelor of Science in Computer Science",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("Bachelors of Science in Marketing",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Container(
                          width: getHorizontalSize(285),
                          margin: getMargin(top: 29, right: 49),
                          child: Text(
                              "Bachelor of Engineering With A Major in Engineering Product Development (Robotic Track)",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text("Bachelor of Busines (Economics/Finance)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Bachelors of Science in Marketing",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 28, bottom: 5),
                          child: Text("Bachelors of Business Adminisitration",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall))
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
