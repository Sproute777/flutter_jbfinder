import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:the_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 1, bottom: 1),
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
                                    decoration: AppDecoration.fill5,
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
                      Padding(
                          padding: getPadding(left: 18, top: 63),
                          child: Text("Job Description",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallOpenSans)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(326),
                              margin: getMargin(left: 20, top: 13, right: 28),
                              child: Text(
                                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOpenSans))),
                      Opacity(
                          opacity: 0.2,
                          child: CustomElevatedButton(
                              text: "Read more",
                              margin: getMargin(left: 20, top: 6),
                              buttonStyle: CustomButtonStyles.fillOnPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              getHorizontalSize(91),
                                              getVerticalSize(30)))),
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallOpenSansGray90002)),
                      Padding(
                          padding: getPadding(left: 20, top: 26),
                          child: Text("Requirements",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallOpenSans)),
                      Padding(
                          padding: getPadding(left: 21, top: 13),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(4),
                                    width: getSize(4),
                                    margin: getMargin(top: 5, bottom: 7),
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
                                        style:
                                            CustomTextStyles.bodySmallOpenSans))
                              ])),
                      Padding(
                          padding: getPadding(left: 21, top: 13),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(4),
                                    width: getSize(4),
                                    margin: getMargin(top: 6, bottom: 24),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray70001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2)))),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(290),
                                        margin: getMargin(left: 11),
                                        child: Text(
                                            "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur & adipisci velit.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans)))
                              ])),
                      Padding(
                          padding: getPadding(left: 21, top: 12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(4),
                                    width: getSize(4),
                                    margin: getMargin(top: 6, bottom: 24),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray70001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2)))),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(264),
                                        margin: getMargin(left: 11),
                                        child: Text(
                                            "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans)))
                              ])),
                      Padding(
                          padding: getPadding(left: 21, top: 12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(4),
                                    width: getSize(4),
                                    margin: getMargin(top: 6, bottom: 40),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray70001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2)))),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(304),
                                        margin: getMargin(left: 11),
                                        child: Text(
                                            "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans)))
                              ])),
                      CustomElevatedButton(
                          text: "Apply Now".toUpperCase(),
                          margin: getMargin(
                              left: 47, top: 35, right: 58, bottom: 5),
                          buttonStyle: CustomButtonStyles.outlineIndigo2002d
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite,
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
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
