import '../company_one_screen/widgets/listgoogleone_item_widget.dart';
import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class CompanyOneScreen extends StatelessWidget {
  CompanyOneScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Padding(
                        padding: getPadding(left: 19, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowleftBlueGray70001,
                                  height: getSize(24),
                                  width: getSize(24),
                                  onTap: () {
                                    onTapImgArrowleft(context);
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 24),
                                      child: Text("Company",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleLargeOpenSans))),
                              CustomSearchView(
                                  margin: getMargin(top: 39),
                                  controller: searchController,
                                  hintText: "Search",
                                  hintStyle:
                                      CustomTextStyles.bodySmallBluegray30003,
                                  textStyle:
                                      CustomTextStyles.bodySmallBluegray30003,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 15,
                                          top: 8,
                                          right: 10,
                                          bottom: 8),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 8,
                                          right: 10,
                                          bottom: 8),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgClose)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.onPrimaryContainer,
                                  contentPadding:
                                      getPadding(top: 12, bottom: 12)),
                              Padding(
                                  padding: getPadding(bottom: 55),
                                  child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return ListgoogleoneItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(top: 98),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLogoapple,
                                        height: getSize(30),
                                        width: getSize(30),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Apple",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray90004),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(children: [
                                                    Text("Company",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBluegray3000310),
                                                    Container(
                                                        height: getSize(2),
                                                        width: getSize(2),
                                                        margin: getMargin(
                                                            left: 5,
                                                            top: 7,
                                                            bottom: 4),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray30003,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 5),
                                                        child: Text(
                                                            "Electronic goods",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallBluegray3000310))
                                                  ]))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 252),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgMicrosoft1,
                                        height: getSize(30),
                                        width: getSize(30),
                                        margin: getMargin(top: 1, bottom: 2)),
                                    Padding(
                                        padding: getPadding(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Microsoft",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSansGray90004),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Row(children: [
                                                    Text("Company",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallOpenSansBluegray30003),
                                                    Container(
                                                        height: getSize(2),
                                                        width: getSize(2),
                                                        margin: getMargin(
                                                            left: 5,
                                                            top: 6,
                                                            bottom: 5),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray30003,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 5),
                                                        child: Text(
                                                            "Computer software",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallOpenSansBluegray30003))
                                                  ]))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAllianz,
                                        height: getSize(31),
                                        width: getSize(31),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 9),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Allianz",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray90004),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "Company",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallBluegray3000310)),
                                                        Container(
                                                            height: getSize(2),
                                                            width: getSize(2),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 8,
                                                                bottom: 4),
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .blueGray30003,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 5,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Financial services",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallBluegray3000310))
                                                      ]))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 1, bottom: 1),
                                        color: appTheme.red70001,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                        child: Container(
                                            height: getSize(30),
                                            width: getSize(30),
                                            padding: getPadding(
                                                left: 2,
                                                top: 4,
                                                right: 2,
                                                bottom: 4),
                                            decoration: AppDecoration.fill15
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMaskgroup19x25,
                                                  height: getVerticalSize(19),
                                                  width: getHorizontalSize(25),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Adobe",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray90004),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Row(children: [
                                                    Text("Company",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallBluegray3000310),
                                                    Container(
                                                        height: getSize(2),
                                                        width: getSize(2),
                                                        margin: getMargin(
                                                            left: 5,
                                                            top: 7,
                                                            bottom: 4),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray30003,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 5),
                                                        child: Text(
                                                            "Computer software",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallBluegray3000310))
                                                  ]))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 81),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 30,
                                        width: 30,
                                        margin: getMargin(top: 1, bottom: 1),
                                        padding: getPadding(all: 4),
                                        decoration: IconButtonStyleHelper
                                            .fillOnSecondaryContainer,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgAirbuslogo)),
                                    Padding(
                                        padding: getPadding(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Airbuz",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSansGray90004),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(children: [
                                                    Text("Company",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallOpenSansBluegray30003),
                                                    Container(
                                                        height: getSize(2),
                                                        width: getSize(2),
                                                        margin: getMargin(
                                                            left: 5,
                                                            top: 8,
                                                            bottom: 4),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray30003,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 5),
                                                        child: Text("flight",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallOpenSansBluegray30003))
                                                  ]))
                                            ]))
                                  ]))
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
