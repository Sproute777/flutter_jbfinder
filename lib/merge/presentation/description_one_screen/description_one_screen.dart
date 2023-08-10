import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:the_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class DescriptionOneScreen extends StatelessWidget {
  const DescriptionOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
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
                            onTapArrowleft1(context);
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
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(177),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Text(
                                                              "UI/UX Designer",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumGray90002)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "Google",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyLarge)),
                                                                Container(
                                                                    height:
                                                                        getSize(
                                                                            7),
                                                                    width:
                                                                        getSize(
                                                                            7),
                                                                    margin: getMargin(
                                                                        left:
                                                                            22,
                                                                        top: 9,
                                                                        bottom:
                                                                            6),
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .gray90002,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(3)))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            32,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "California",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyLarge)),
                                                                Container(
                                                                    height:
                                                                        getSize(
                                                                            7),
                                                                    width:
                                                                        getSize(
                                                                            7),
                                                                    margin: getMargin(
                                                                        left:
                                                                            32,
                                                                        top: 9,
                                                                        bottom:
                                                                            6),
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .gray90002,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(3)))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 1),
                                                                    child: Text(
                                                                        "1 day ago",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
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
                                                        BorderRadiusStyle
                                                            .circleBorder42),
                                                child: Container(
                                                    height: getSize(84),
                                                    width: getSize(84),
                                                    padding:
                                                        getPadding(all: 14),
                                                    decoration: AppDecoration
                                                        .fill2
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder42),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGoogle1,
                                                          height: getSize(54),
                                                          width: getSize(54),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 35, top: 23),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Salary",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumDMSansGray90002)),
                                    Spacer(),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Job Type",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumDMSansGray90002)),
                                    Padding(
                                        padding:
                                            getPadding(left: 43, bottom: 1),
                                        child: Text("Postion",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumDMSansGray90002))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 20, top: 22),
                                  child: Text("Job Description",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall)),
                              Container(
                                  width: getHorizontalSize(320),
                                  margin:
                                      getMargin(left: 20, top: 14, right: 34),
                                  child: Text(
                                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Opacity(
                                  opacity: 0.2,
                                  child: CustomElevatedButton(
                                      text: "Read more",
                                      margin: getMargin(left: 20, top: 8),
                                      buttonStyle: CustomButtonStyles
                                          .fillOnPrimary
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      getHorizontalSize(91),
                                                      getVerticalSize(30)))),
                                      buttonTextStyle: CustomTextStyles
                                          .bodySmallOpenSansGray90002)),
                              Padding(
                                  padding: getPadding(left: 20, top: 26),
                                  child: Text("Requirements",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall)),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 6, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text(
                                            "Sed ut perspiciatis unde omnis iste natus error sit.",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 13),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(4),
                                            width: getSize(4),
                                            margin:
                                                getMargin(top: 5, bottom: 25),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray70001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(290),
                                                margin: getMargin(left: 11),
                                                child: Text(
                                                    "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans)))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 12),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(4),
                                            width: getSize(4),
                                            margin:
                                                getMargin(top: 6, bottom: 24),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray70001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(264),
                                                margin: getMargin(left: 11),
                                                child: Text(
                                                    "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans)))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 12),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(4),
                                            width: getSize(4),
                                            margin:
                                                getMargin(top: 6, bottom: 40),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray70001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)))),
                                        Expanded(
                                            child: Container(
                                                width: getHorizontalSize(304),
                                                margin: getMargin(left: 11),
                                                child: Text(
                                                    "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSans)))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 20, top: 21),
                                  child: Text("Location",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall)),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text(
                                      "Overlook Avenue, Belleville, NJ, USA",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(151),
                                      width: getHorizontalSize(333),
                                      margin: getMargin(top: 16),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMap151x333,
                                                height: getVerticalSize(151),
                                                width: getHorizontalSize(333),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(36),
                                                width: getSize(36),
                                                alignment: Alignment.topCenter,
                                                margin: getMargin(top: 52))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 20, top: 24),
                                  child: Text("Informations",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall)),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("Position",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 6),
                                  child: Text("Senior Designer",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray300,
                                          indent: getHorizontalSize(20),
                                          endIndent: getHorizontalSize(20)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 14),
                                  child: Text("Qualification",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 5),
                                  child: Text("Bachelor’s Degree",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray300,
                                          indent: getHorizontalSize(20),
                                          endIndent: getHorizontalSize(20)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("Experience",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 3),
                                  child: Text("3 Years",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray300,
                                          indent: getHorizontalSize(20),
                                          endIndent: getHorizontalSize(20)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("Job Type",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 3),
                                  child: Text("Full-Time",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray300,
                                          indent: getHorizontalSize(20),
                                          endIndent: getHorizontalSize(20)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("Specialization",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 5),
                                  child: Text("Design",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodySmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 13),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray300,
                                          indent: getHorizontalSize(20),
                                          endIndent: getHorizontalSize(20)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 29),
                                  child: Text("Facilities and Others",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall)),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 7, bottom: 4),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Medical",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 7, bottom: 4),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Dental",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 7, bottom: 4),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Technical Cartification",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 7, bottom: 4),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Meal Allowance",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 16),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 6, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Transport Allowance",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 15),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 5, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Regular Hours",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 21, top: 14),
                                  child: Row(children: [
                                    Container(
                                        height: getSize(4),
                                        width: getSize(4),
                                        margin: getMargin(top: 6, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Padding(
                                        padding: getPadding(left: 11),
                                        child: Text("Mondays-Fridays",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall))
                                  ]))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "Apply Now".toUpperCase(),
                margin: getMargin(left: 52, right: 53, bottom: 28),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(50)))),
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer_2)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
