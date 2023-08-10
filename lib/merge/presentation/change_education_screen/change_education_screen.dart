import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class ChangeEducationScreen extends StatelessWidget {
  ChangeEducationScreen({Key? key}) : super(key: key);

  TextEditingController bachelorofinforController = TextEditingController();

  TextEditingController institutionnameController = TextEditingController();

  TextEditingController fieldofstudyController = TextEditingController();

  TextEditingController sepcounterController = TextEditingController();

  TextEditingController augcounterController = TextEditingController();

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
                padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(top: 3),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("Change Education",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Level of education",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: bachelorofinforController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Bachelor of Information Technology",
                          hintStyle: theme.textTheme.bodySmall!,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Institution name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: institutionnameController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "University of Oxford",
                          hintStyle: theme.textTheme.bodySmall!,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Field of study",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge)),
                      CustomTextFormField(
                          controller: fieldofstudyController,
                          margin: getMargin(top: 9),
                          contentPadding: getPadding(
                              left: 20, top: 12, right: 20, bottom: 12),
                          textStyle: theme.textTheme.bodySmall!,
                          hintText: "Information Technology",
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
                                                      sepcounterController,
                                                  margin: getMargin(top: 10),
                                                  contentPadding: getPadding(
                                                      left: 20,
                                                      top: 12,
                                                      right: 20,
                                                      bottom: 12),
                                                  textStyle: theme
                                                      .textTheme.bodySmall!,
                                                  hintText: "Sep 2010",
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
                                                      augcounterController,
                                                  margin: getMargin(top: 10),
                                                  contentPadding: getPadding(
                                                      left: 20,
                                                      top: 12,
                                                      right: 20,
                                                      bottom: 12),
                                                  textStyle: theme
                                                      .textTheme.bodySmall!,
                                                  hintText: "Aug 2013",
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
                          fillColor: theme.colorScheme.onPrimaryContainer)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, bottom: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomElevatedButton(
                      text: "Remove".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillDeeppurple10001
                          .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  getHorizontalSize(160),
                                  getVerticalSize(50)))),
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer_2),
                  CustomElevatedButton(
                      text: "Save".toUpperCase(),
                      margin: getMargin(left: 15),
                      buttonStyle: CustomButtonStyles.outlineIndigo2002d
                          .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  getHorizontalSize(160),
                                  getVerticalSize(50)))),
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer_2)
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
