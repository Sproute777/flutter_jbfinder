import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class FilterOneScreen extends StatelessWidget {
  FilterOneScreen({Key? key}) : super(key: key);

  TextEditingController designController = TextEditingController();

  TextEditingController uiuxdesignController = TextEditingController();

  TextEditingController locationoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray70001,
                    margin: getMargin(left: 20, top: 4, bottom: 27),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: Text("Filter",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeBlack900)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, top: 35, right: 18, bottom: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(528),
                          width: getHorizontalSize(337),
                          margin: getMargin(top: 9),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(right: 2),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Category",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallOpenSans),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowup,
                                                  height: getSize(10),
                                                  width: getSize(10),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(top: 9)),
                                              CustomTextFormField(
                                                  controller: designController,
                                                  margin: getMargin(
                                                      left: 4, top: 5),
                                                  contentPadding: getPadding(
                                                      left: 30,
                                                      top: 17,
                                                      right: 30,
                                                      bottom: 17),
                                                  textStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  hintText: "Design",
                                                  hintStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  defaultBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillOnPrimaryContainerTL6,
                                                  enabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillOnPrimaryContainerTL6,
                                                  focusedBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillOnPrimaryContainerTL6,
                                                  disabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillOnPrimaryContainerTL6),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3, top: 32),
                                                  child: Text("Sub Category",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallOpenSans)),
                                              CustomTextFormField(
                                                  controller:
                                                      uiuxdesignController,
                                                  margin: getMargin(
                                                      left: 4, top: 10),
                                                  contentPadding: getPadding(
                                                      left: 30,
                                                      top: 17,
                                                      right: 30,
                                                      bottom: 17),
                                                  textStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  hintText: "UI/UX Design",
                                                  hintStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  filled: true,
                                                  fillColor: appTheme.whiteA700,
                                                  defaultBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  enabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  focusedBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  disabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 15),
                                                  child: Text("Location",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallOpenSans)),
                                              CustomTextFormField(
                                                  controller:
                                                      locationoneController,
                                                  margin: getMargin(
                                                      left: 4, top: 15),
                                                  contentPadding: getPadding(
                                                      left: 30,
                                                      top: 17,
                                                      right: 30,
                                                      bottom: 17),
                                                  textStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  hintText: "California",
                                                  hintStyle: CustomTextStyles
                                                      .bodySmallBlack900,
                                                  filled: true,
                                                  fillColor: appTheme.whiteA700,
                                                  defaultBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  enabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  focusedBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700,
                                                  disabledBorderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillWhiteA700),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 32,
                                                      right: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "Minimum Salary",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodyMediumDMSansBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Minimum Salary",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodyMediumDMSansBlack900))
                                                      ])),
                                              Spacer(),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Text("Job Type",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 2, bottom: 29),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Salary",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleSmallOpenSans),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowup,
                                                        height: getSize(10),
                                                        width: getSize(10),
                                                        margin: getMargin(
                                                            top: 7, bottom: 2))
                                                  ]),
                                              Container(
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(335),
                                                  margin: getMargin(top: 31),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        2),
                                                                width:
                                                                    getHorizontalSize(
                                                                        335),
                                                                margin: getMargin(
                                                                    bottom:
                                                                        10))),
                                                        SliderTheme(
                                                            data: SliderThemeData(
                                                                trackShape:
                                                                    RoundedRectSliderTrackShape(),
                                                                activeTrackColor:
                                                                    appTheme
                                                                        .orange400,
                                                                inactiveTrackColor: theme
                                                                    .colorScheme
                                                                    .secondaryContainer,
                                                                thumbColor: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                thumbShape:
                                                                    RoundSliderThumbShape()),
                                                            child: RangeSlider(
                                                                values:
                                                                    RangeValues(
                                                                        0, 0),
                                                                min: 0.0,
                                                                max: 100.0,
                                                                onChanged:
                                                                    (value) {}))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 81,
                                                      top: 9,
                                                      right: 84),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("13k",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Text("25k",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: appTheme.gray300))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 6, top: 15, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                    opacity: 0.2,
                                    child: Container(
                                        width: getHorizontalSize(107),
                                        padding: getPadding(
                                            left: 30,
                                            top: 6,
                                            right: 30,
                                            bottom: 6),
                                        decoration: AppDecoration.txtFill3
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                        child: Text("Full time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall10))),
                                Opacity(
                                    opacity: 0.2,
                                    child: Container(
                                        width: getHorizontalSize(107),
                                        padding: getPadding(
                                            left: 30,
                                            top: 6,
                                            right: 30,
                                            bottom: 6),
                                        decoration: AppDecoration.txtFill3
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                        child: Text("Part time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall10))),
                                Opacity(
                                    opacity: 0.2,
                                    child: Container(
                                        width: getHorizontalSize(99),
                                        padding: getPadding(
                                            left: 30,
                                            top: 6,
                                            right: 30,
                                            bottom: 6),
                                        decoration: AppDecoration.txtFill3
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                        child: Text("Remote",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall10)))
                              ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Apply Now".toUpperCase(),
                margin: getMargin(left: 65, right: 65, bottom: 30),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(getHorizontalSize(245), getVerticalSize(50)))),
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer_2)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
