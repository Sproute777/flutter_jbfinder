import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class AddWorkExperienceScreen extends StatelessWidget {
  AddWorkExperienceScreen({Key? key}) : super(key: key);

  TextEditingController rectanglefiftynController = TextEditingController();

  TextEditingController group277Controller = TextEditingController();

  TextEditingController rectanglefiftynController1 = TextEditingController();

  TextEditingController rectanglefiftynController2 = TextEditingController();

  bool isCheckbox = false;

  TextEditingController additionalinfoController = TextEditingController();

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
                          svgPath: ImageConstant.imgArrowleftBlueGray80003,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Add work experience",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Job title",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: rectanglefiftynController,
                          margin: getMargin(top: 10),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Company",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: group277Controller,
                          margin: getMargin(top: 8),
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(right: 7),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Start date",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(160),
                                                  controller:
                                                      rectanglefiftynController1,
                                                  margin: getMargin(top: 10),
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer)
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 7),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("End date",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(160),
                                                  controller:
                                                      rectanglefiftynController2,
                                                  margin: getMargin(top: 10),
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer)
                                            ])))
                              ])),
                      CustomCheckboxButton(
                          text: "This is my position now",
                          iconSize: getHorizontalSize(24),
                          value: isCheckbox,
                          margin: getMargin(top: 20),
                          padding: getPadding(top: 3, bottom: 3),
                          textStyle: theme.textTheme.bodySmall!,
                          onChange: (value) {
                            isCheckbox = value;
                          }),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Description",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: additionalinfoController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          textStyle: CustomTextStyles.bodySmallBluegray30003,
                          hintText: "Write additional information here",
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          maxLines: 9,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      CustomElevatedButton(
                          text: "Save".toUpperCase(),
                          margin: getMargin(top: 50, bottom: 5),
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
