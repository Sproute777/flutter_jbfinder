import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/merge/theme/custom_text_style.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchLanguageScreen extends StatelessWidget {
  SearchLanguageScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Padding(
                        padding: getPadding(left: 20, right: 20),
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
                                      style: theme.textTheme.titleMedium)),
                              CustomSearchView(
                                  margin: getMargin(top: 29),
                                  controller: searchController,
                                  hintText: "Search skills",
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
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            searchController.clear();
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  filled: true,
                                  fillColor:
                                      theme.colorScheme.onPrimaryContainer,
                                  contentPadding: getPadding(
                                      top: 12, right: 30, bottom: 12)),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle430x30,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("Arabic",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.outline8.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle4,
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
                                            style: CustomTextStyles
                                                .labelLargeOnPrimaryContainer))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle41,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 8, bottom: 6),
                                        child: Text("Malaysian",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle5,
                                            height: getSize(30),
                                            width: getSize(30),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(15))),
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 8, bottom: 5),
                                            child: Text("English",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray90004)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin: getMargin(
                                                top: 8, right: 3, bottom: 11))
                                      ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle42,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("French",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle43,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("German",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle44,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("Hindi",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle45,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("Italian",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle46,
                                        height: getSize(30),
                                        width: getSize(30),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15))),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 8, bottom: 5),
                                        child: Text("Japanese",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
                                  ])),
                              Container(
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fill10.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaskgroup30x30,
                                        height: getSize(30),
                                        width: getSize(30)),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 6, bottom: 7),
                                        child: Text("Korean",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray90004))
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
