import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class AddLanguageScreen extends StatelessWidget {
  AddLanguageScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftGray90003,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Add Language",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray90003_1)),
                      Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 15, top: 20, right: 15, bottom: 20),
                          decoration: AppDecoration.fill10.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 5),
                                          child: Text("Language",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle4,
                                          height: getSize(30),
                                          width: getSize(30),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15))),
                                      Padding(
                                          padding: getPadding(
                                              left: 10, top: 6, bottom: 7),
                                          child: Text("Indonesian",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodySmall))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray300)),
                                Padding(
                                    padding: getPadding(top: 19, bottom: 6),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(305),
                                        text: "First language",
                                        iconSize: getHorizontalSize(18),
                                        value: "First language",
                                        groupValue: radioGroup,
                                        margin: getMargin(top: 19, bottom: 6),
                                        padding: getPadding(top: 1, bottom: 1),
                                        textStyle: theme.textTheme.labelLarge!,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 15, top: 25, right: 15, bottom: 25),
                          decoration: AppDecoration.fill10.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Oral",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Text("level 10",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray30003)),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.gray300)),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Text("Written",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text(
                                        "Choose your speaking skill level",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray30003))
                              ])),
                      Padding(
                          padding: getPadding(left: 15, top: 16),
                          child: Text(
                              "Proficiency level : 0 - Poor, 10 - Very good",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBluegray30003)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Save".toUpperCase(),
                          margin: getMargin(bottom: 62),
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
