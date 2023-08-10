import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class StartDateScreen extends StatelessWidget {
  StartDateScreen({Key? key}) : super(key: key);

  TextEditingController group160Controller = TextEditingController();

  TextEditingController group161Controller = TextEditingController();

  TextEditingController sepcounterController = TextEditingController();

  TextEditingController augcounterController = TextEditingController();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: getVerticalSize(812),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 20, right: 20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(24),
                                    width: getSize(24),
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
                                    controller: group160Controller,
                                    margin: getMargin(top: 10),
                                    contentPadding: getPadding(
                                        left: 20,
                                        top: 12,
                                        right: 20,
                                        bottom: 12),
                                    textStyle: theme.textTheme.bodySmall!,
                                    hintText:
                                        "Bachelor of Information Technology",
                                    hintStyle: theme.textTheme.bodySmall!,
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("Institution name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)),
                                CustomTextFormField(
                                    controller: group161Controller,
                                    margin: getMargin(top: 10),
                                    contentPadding: getPadding(
                                        left: 20,
                                        top: 12,
                                        right: 20,
                                        bottom: 12),
                                    textStyle: theme.textTheme.bodySmall!,
                                    hintText: "University of Oxford",
                                    hintStyle: theme.textTheme.bodySmall!,
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Text("Field of study",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)),
                                Container(
                                    width: getHorizontalSize(335),
                                    margin: getMargin(top: 9),
                                    padding: getPadding(
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        bottom: 10),
                                    decoration: AppDecoration.outline.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("Information Technology",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(right: 7),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Start date",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    160),
                                                            controller:
                                                                sepcounterController,
                                                            margin: getMargin(
                                                                top: 10),
                                                            contentPadding:
                                                                getPadding(
                                                                    left: 20,
                                                                    top: 12,
                                                                    right: 20,
                                                                    bottom: 12),
                                                            textStyle: theme
                                                                .textTheme
                                                                .bodySmall!,
                                                            hintText:
                                                                "Sep 2010",
                                                            hintStyle: theme
                                                                .textTheme
                                                                .bodySmall!,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            filled: true,
                                                            fillColor: theme
                                                                .colorScheme
                                                                .onPrimaryContainer)
                                                      ]))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 7),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("End date",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    160),
                                                            controller:
                                                                augcounterController,
                                                            margin: getMargin(
                                                                top: 10),
                                                            contentPadding:
                                                                getPadding(
                                                                    left: 20,
                                                                    top: 12,
                                                                    right: 20,
                                                                    bottom: 12),
                                                            textStyle: theme
                                                                .textTheme
                                                                .bodySmall!,
                                                            hintText:
                                                                "Aug 2013",
                                                            hintStyle: theme
                                                                .textTheme
                                                                .bodySmall!,
                                                            filled: true,
                                                            fillColor: theme
                                                                .colorScheme
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
                                Container(
                                    width: getHorizontalSize(335),
                                    margin: getMargin(top: 9),
                                    padding: getPadding(
                                        left: 20,
                                        top: 16,
                                        right: 20,
                                        bottom: 16),
                                    decoration: AppDecoration.outline.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Text(
                                        "Write additional information here",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray30003)),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  text: "Remove".toUpperCase(),
                                                  margin: getMargin(right: 7),
                                                  buttonStyle: CustomButtonStyles
                                                      .fillDeeppurpleA100
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      50)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer_2)),
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  text: "Save".toUpperCase(),
                                                  margin: getMargin(left: 7),
                                                  buttonStyle: CustomButtonStyles
                                                      .fillPrimary
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      50)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallOnPrimaryContainer_2))
                                        ]))
                              ]))),
                  Opacity(
                      opacity: 0.6,
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: getPadding(
                                  left: 50, top: 185, right: 50, bottom: 185),
                              decoration: AppDecoration.fill21,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVector56Gray700,
                                        height: getVerticalSize(4),
                                        width: getHorizontalSize(30),
                                        margin: getMargin(top: 38)),
                                    Padding(
                                        padding: getPadding(top: 46),
                                        child: Text("End Date",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleMediumOpenSans_1)),
                                    Padding(
                                        padding: getPadding(top: 57),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Opacity(
                                                  opacity: 0.6,
                                                  child: CustomElevatedButton(
                                                      text: "Jul",
                                                      margin: getMargin(
                                                          top: 28, bottom: 28),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray400
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          30),
                                                                      getVerticalSize(
                                                                          52)))),
                                                      buttonTextStyle: theme
                                                          .textTheme
                                                          .labelMedium!)),
                                              Container(
                                                  margin: getMargin(left: 5),
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 41,
                                                      right: 12,
                                                      bottom: 41),
                                                  decoration: AppDecoration
                                                      .fill9
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text("Aug",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOpenSansOnPrimaryContainer))),
                                              Opacity(
                                                  opacity: 0.6,
                                                  child: CustomElevatedButton(
                                                      text: "Sep",
                                                      margin: getMargin(
                                                          left: 5,
                                                          top: 28,
                                                          bottom: 28),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray400
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          30),
                                                                      getVerticalSize(
                                                                          52)))),
                                                      buttonTextStyle: theme
                                                          .textTheme
                                                          .labelMedium!)),
                                              Padding(
                                                  padding: getPadding(left: 16),
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(108),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .gray30003,
                                                          indent:
                                                              getHorizontalSize(
                                                                  18),
                                                          endIndent:
                                                              getHorizontalSize(
                                                                  12)))),
                                              Opacity(
                                                  opacity: 0.6,
                                                  child: Container(
                                                      width:
                                                          getHorizontalSize(30),
                                                      margin: getMargin(
                                                          left: 18,
                                                          top: 28,
                                                          bottom: 28),
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 18,
                                                          right: 3,
                                                          bottom: 18),
                                                      decoration: AppDecoration
                                                          .txtFill5
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder8),
                                                      child: Text("2012",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelMedium))),
                                              Container(
                                                  margin: getMargin(left: 5),
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 43,
                                                      right: 8,
                                                      bottom: 43),
                                                  decoration: AppDecoration
                                                      .fill9
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("2013",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOpenSansOnPrimaryContainer))),
                                              Opacity(
                                                  opacity: 0.6,
                                                  child: Container(
                                                      width:
                                                          getHorizontalSize(30),
                                                      margin: getMargin(
                                                          left: 5,
                                                          top: 28,
                                                          bottom: 28),
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 18,
                                                          right: 3,
                                                          bottom: 18),
                                                      decoration: AppDecoration
                                                          .txtFill5
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder8),
                                                      child: Text("2014",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelMedium)))
                                            ])),
                                    CustomElevatedButton(
                                        text: "Save".toUpperCase(),
                                        margin: getMargin(
                                            left: 29, top: 57, right: 29),
                                        buttonStyle: CustomButtonStyles
                                            .outlineIndigo2002d
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2),
                                    CustomElevatedButton(
                                        text: "Cancel".toUpperCase(),
                                        margin: getMargin(
                                            left: 29, top: 10, right: 29),
                                        buttonStyle: CustomButtonStyles
                                            .fillDeeppurple10001
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(50)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2)
                                  ]))))
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
