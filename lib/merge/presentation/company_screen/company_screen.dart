import 'package:flutter/material.dart';

import '../export.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 44,
                leading: Container(
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(left: 20, top: 16, bottom: 16),
                    child: Stack(alignment: Alignment.center, children: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgArrowleft,
                          onTap: () {
                            onTapArrowleft2(context);
                          }),
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgArrowleft)
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      SizedBox(
                          height: getVerticalSize(177),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 29,
                                        top: 19,
                                        right: 29,
                                        bottom: 19),
                                    decoration: AppDecoration.fill6,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Text("UI/UX Designer",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleMediumGray90002)),
                                          Padding(
                                              padding: getPadding(top: 14),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("Google",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Container(
                                                        height: getSize(7),
                                                        width: getSize(7),
                                                        margin: getMargin(
                                                            left: 22,
                                                            top: 9,
                                                            bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray90002,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        3)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 32,
                                                            bottom: 1),
                                                        child: Text(
                                                            "California",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Container(
                                                        height: getSize(7),
                                                        width: getSize(7),
                                                        margin: getMargin(
                                                            left: 32,
                                                            top: 9,
                                                            bottom: 6),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray90002,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        3)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Text("1 day ago",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.lightBlue100,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder42),
                                    child: Container(
                                        height: getSize(84),
                                        width: getSize(84),
                                        padding: getPadding(all: 14),
                                        decoration: AppDecoration.fill2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder42),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle1,
                                              height: getSize(54),
                                              width: getSize(54),
                                              alignment: Alignment.center)
                                        ]))))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 19, top: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomElevatedButton(
                                        text: "Description",
                                        buttonStyle: CustomButtonStyles
                                            .fillPrimary
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        getHorizontalSize(162),
                                                        getVerticalSize(40)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallOnPrimaryContainer_2),
                                    CustomElevatedButton(
                                        text: "Company",
                                        margin: getMargin(left: 14),
                                        buttonStyle: CustomButtonStyles
                                            .fillDeeppurple10001
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        getHorizontalSize(162),
                                                        getVerticalSize(40)))),
                                        buttonTextStyle:
                                            CustomTextStyles.titleSmallPrimary)
                                  ]))),
                      Padding(
                          padding: getPadding(left: 20, top: 21),
                          child: Text("About Company",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Container(
                          width: getHorizontalSize(320),
                          margin: getMargin(left: 20, top: 19, right: 34),
                          child: Text(
                              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Container(
                          width: getHorizontalSize(305),
                          margin: getMargin(left: 20, top: 13, right: 49),
                          child: Text(
                              "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Container(
                          width: getHorizontalSize(318),
                          margin: getMargin(left: 20, top: 13, right: 36),
                          child: Text(
                              "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(left: 20, top: 17),
                          child: Text("Website",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtWeburl(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 20, top: 6),
                              child: Text("https://www.google.com",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOnPrimary))),
                      Padding(
                          padding: getPadding(left: 20, top: 20),
                          child: Text("Industry",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Padding(
                          padding: getPadding(left: 20, top: 5),
                          child: Text("Internet product",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(left: 20, top: 20),
                          child: Text("Employee size",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Padding(
                          padding: getPadding(left: 20, top: 5),
                          child: Text("132,121 Employees",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall)),
                      Container(
                          height: getVerticalSize(97),
                          width: double.maxFinite,
                          margin: getMargin(top: 18),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Head office",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallOpenSans),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(
                                                  "Mountain View, California, Amerika Serikat",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSans)),
                                          Padding(
                                              padding: getPadding(top: 20),
                                              child: Text("Type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallOpenSans)),
                                          Text("Multinational company",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallOpenSans)
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 11, bottom: 7),
                                    padding: getPadding(
                                        left: 20,
                                        top: 14,
                                        right: 20,
                                        bottom: 14),
                                    decoration: AppDecoration.outline1,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              padding: getPadding(all: 13),
                                              decoration: IconButtonStyleHelper
                                                  .outlineBluegray20026,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgBookmarkOrangeA20001)),
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  text:
                                                      "Apply Now".toUpperCase(),
                                                  margin: getMargin(left: 15),
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
                                                      .titleSmallOnPrimaryContainer_2))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(left: 20, top: 23),
                          child: Text("Since",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallOpenSans)),
                      Padding(
                          padding: getPadding(left: 20, top: 5),
                          child: Text("1998",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallOpenSans)),
                      Padding(
                          padding: getPadding(left: 20, top: 20),
                          child: Text("Specialization",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallOpenSans)),
                      Container(
                          width: getHorizontalSize(279),
                          margin: getMargin(left: 20, top: 5, right: 76),
                          child: Text(
                              "Search technology, Web computing, Software and Online advertising",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallOpenSans)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Company Gallery",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallOpenSans),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashgmsnxqiljp4,
                                              height: getVerticalSize(118),
                                              width: getHorizontalSize(223),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              margin: getMargin(top: 20))
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 10, top: 39),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplashuevezouyhgw,
                                                  height: getVerticalSize(54),
                                                  width: getHorizontalSize(102),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(10))),
                                              Container(
                                                  height: getVerticalSize(54),
                                                  width: getHorizontalSize(102),
                                                  margin: getMargin(top: 10),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashwd1lrb9oeeo,
                                                            height:
                                                                getVerticalSize(
                                                                    54),
                                                            width:
                                                                getHorizontalSize(
                                                                    102),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        10)),
                                                            alignment: Alignment
                                                                .center),
                                                        Opacity(
                                                            opacity: 0.7,
                                                            child: CustomElevatedButton(
                                                                text:
                                                                    "+5 pictures",
                                                                buttonStyle: CustomButtonStyles
                                                                    .fillTeal90099
                                                                    .copyWith(
                                                                        fixedSize: MaterialStateProperty.all<Size>(Size(
                                                                            getHorizontalSize(
                                                                                102),
                                                                            getVerticalSize(
                                                                                54)))),
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .labelLargeOpenSansOnPrimaryContainer,
                                                                alignment:
                                                                    Alignment
                                                                        .center))
                                                      ]))
                                            ]))
                                  ])))
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtWeburl(BuildContext context) {
    // TODO: implement Actions
  }
}
