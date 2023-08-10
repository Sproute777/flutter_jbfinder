import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class ChangeWorkExperienceScreen extends StatelessWidget {
  ChangeWorkExperienceScreen({Key? key}) : super(key: key);

  TextEditingController managerController = TextEditingController();

  TextEditingController companynameController = TextEditingController();

  TextEditingController jancounterController = TextEditingController();

  TextEditingController febcounterController = TextEditingController();

  bool isCheckbox = false;

  TextEditingController descriptiononeController = TextEditingController();

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
                          child: Text("Change work experience",
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
                          controller: managerController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Manager",
                          hintStyle: theme.textTheme.bodySmall!,
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
                          controller: companynameController,
                          margin: getMargin(top: 8),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Amazon Inc",
                          hintStyle: theme.textTheme.bodySmall!,
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
                                                      jancounterController,
                                                  margin: getMargin(top: 10),
                                                  contentPadding: getPadding(
                                                      left: 20,
                                                      top: 12,
                                                      right: 20,
                                                      bottom: 12),
                                                  textStyle: theme
                                                      .textTheme.bodySmall!,
                                                  hintText: "Jan 2015",
                                                  hintStyle: theme
                                                      .textTheme.bodySmall!,
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
                                                      febcounterController,
                                                  margin: getMargin(top: 10),
                                                  contentPadding: getPadding(
                                                      left: 20,
                                                      top: 12,
                                                      right: 20,
                                                      bottom: 12),
                                                  textStyle: theme
                                                      .textTheme.bodySmall!,
                                                  hintText: "Feb 2022",
                                                  hintStyle: theme
                                                      .textTheme.bodySmall!,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer)
                                            ])))
                              ])),
                      CustomCheckboxButton(
                          text: "This is my position now",
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
                          controller: descriptiononeController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          textStyle: CustomTextStyles.bodySmallBluegray30003,
                          hintText: "Write additional information here",
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          maxLines: 9,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 42, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Remove".toUpperCase(),
                                        margin: getMargin(right: 7),
                                        buttonStyle: CustomButtonStyles
                                            .fillDeeppurple10001
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2)),
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Save".toUpperCase(),
                                        margin: getMargin(left: 7),
                                        buttonStyle: CustomButtonStyles
                                            .outlineIndigo2002d
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2))
                              ]))
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
