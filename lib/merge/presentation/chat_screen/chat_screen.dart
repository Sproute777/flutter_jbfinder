import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../export.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 15, bottom: 15),
                          decoration: AppDecoration.outline,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(39),
                                    leadingWidth: 44,
                                    leading: AppbarImage(
                                        height: getSize(24),
                                        width: getSize(24),
                                        svgPath: ImageConstant
                                            .imgArrowleftBlueGray70001,
                                        margin: getMargin(left: 20),
                                        onTap: () {
                                          onTapArrowleft6(context);
                                        }),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath: ImageConstant
                                              .imgOverflowmenuGray700,
                                          margin:
                                              getMargin(left: 20, right: 20))
                                    ]),
                                Padding(
                                    padding: getPadding(left: 26, top: 37),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage50x50,
                                              height: getSize(50),
                                              width: getSize(50),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(25))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11, top: 9, bottom: 7),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Orlando Diggs",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleSmallErrorContainer),
                                                    Row(children: [
                                                      Container(
                                                          height: getSize(5),
                                                          width: getSize(5),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 4),
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .green500,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          2)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text("Online",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))
                                                    ])
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCall,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  top: 9, bottom: 16)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSearchOrange400,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 10, top: 9, bottom: 17))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(left: 20, right: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Today",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray30003)),
                                Container(
                                    height: getVerticalSize(48),
                                    width: getHorizontalSize(192),
                                    margin: getMargin(top: 24),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgRectangle95,
                                              height: getVerticalSize(48),
                                              width: getHorizontalSize(192),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 20),
                                                  child: Text(
                                                      "Hello sir, Good Morning",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumDMSansOnPrimaryContainer)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("09:30 am",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallBluegray3000310),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCheckmark,
                                              height: getVerticalSize(10),
                                              width: getHorizontalSize(14),
                                              margin: getMargin(
                                                  left: 3, top: 2, bottom: 1))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse49,
                                              height: getSize(35),
                                              width: getSize(35),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(17)),
                                              margin: getMargin(top: 13)),
                                          Container(
                                              height: getVerticalSize(48),
                                              width: getHorizontalSize(192),
                                              margin: getMargin(left: 10),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.1,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgRectangle98,
                                                            height:
                                                                getVerticalSize(
                                                                    48),
                                                            width:
                                                                getHorizontalSize(
                                                                    192),
                                                            alignment: Alignment
                                                                .center)),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "Morning, Can i help you ?",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyMediumDMSans))
                                                  ]))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 45, top: 4),
                                        child: Text("09:31 am",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBluegray3000310))),
                                Container(
                                    margin: getMargin(left: 74, top: 10),
                                    padding: getPadding(
                                        left: 15,
                                        top: 14,
                                        right: 15,
                                        bottom: 14),
                                    // decoration: BoxDecoration(
                                    //     image: DecorationImage(
                                    //         image: ImageConstant.Svg(
                                    //             ImageConstant.imgRectangle95),
                                    //         fit: BoxFit.cover)),
                                    child: SizedBox(
                                        width: getHorizontalSize(227),
                                        child: Text(
                                            "I saw the UI/UX Designer vacancy that you uploaded on linkedin yesterday and I am interested in joining your company.",
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumDMSansOnPrimaryContainer))),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("09:33 am",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallBluegray3000310),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCheckmark,
                                              height: getVerticalSize(9),
                                              width: getHorizontalSize(13),
                                              margin: getMargin(
                                                  left: 4, top: 2, bottom: 1))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse49,
                                              height: getSize(35),
                                              width: getSize(35),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(17)),
                                              margin: getMargin(top: 31)),
                                          Container(
                                              margin: getMargin(left: 10),
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 14,
                                                  right: 20,
                                                  bottom: 14),
                                              // decoration: BoxDecoration(
                                              //     image: DecorationImage(
                                              //         image: fs.Svg(
                                              //             ImageConstant
                                              //                 .imgRectangle98),
                                              //         fit: BoxFit.cover)),
                                              child: Container(
                                                  width: getHorizontalSize(150),
                                                  margin: getMargin(right: 1),
                                                  child: Text(
                                                      "Oh yes, please send your CV/Resume here",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumDMSans)))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 45, top: 4),
                                        child: Text("09:35 am",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallBluegray3000310))),
                                Container(
                                    margin: getMargin(top: 10),
                                    padding: getPadding(
                                        left: 10, top: 9, right: 10, bottom: 9),
                                    decoration: AppDecoration.fill1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              height: getVerticalSize(44),
                                              width: getHorizontalSize(33),
                                              margin: getMargin(
                                                  left: 10, top: 5, bottom: 6),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVolumeRed700,
                                                        height:
                                                            getVerticalSize(44),
                                                        width:
                                                            getHorizontalSize(
                                                                33),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSignal,
                                                                  height:
                                                                      getVerticalSize(
                                                                          13),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          12),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10),
                                                                  child: Text(
                                                                      "PDF",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: CustomTextStyles
                                                                          .labelMediumExtraBold))
                                                            ]))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 15, top: 5),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomRadioButton(
                                                        width:
                                                            getHorizontalSize(
                                                                137),
                                                        text:
                                                            "Jamet- CV - UI/UX Designer.PDF",
                                                        value:
                                                            "Jamet- CV - UI/UX Designer.PDF",
                                                        groupValue: radioGroup,
                                                        textStyle: CustomTextStyles
                                                            .bodySmallOnPrimaryContainer_1,
                                                        isRightCheck: true,
                                                        onChange: (value) {
                                                          radioGroup = value;
                                                        }),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "867 Kb PDF",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallBluegray100))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("09:33 am",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallOpenSansBluegray30003),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkBlueGray40001,
                                              height: getVerticalSize(9),
                                              width: getHorizontalSize(13),
                                              margin:
                                                  getMargin(left: 5, bottom: 3))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 80, bottom: 25),
                child: Row(children: [
                  Expanded(
                      child: CustomTextFormField(
                          controller: messageController,
                          contentPadding:
                              getPadding(top: 17, right: 30, bottom: 17),
                          textStyle: CustomTextStyles.bodySmallBluegray30003,
                          hintText: "Write your massage",
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          prefix: Container(
                              margin: getMargin(
                                  left: 15, top: 13, right: 20, bottom: 13),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEditBlueGray70001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer,
                          defaultBorderDecoration: TextFormFieldStyleHelper
                              .fillOnPrimaryContainerTL15,
                          enabledBorderDecoration: TextFormFieldStyleHelper
                              .fillOnPrimaryContainerTL15,
                          focusedBorderDecoration: TextFormFieldStyleHelper
                              .fillOnPrimaryContainerTL15,
                          disabledBorderDecoration: TextFormFieldStyleHelper
                              .fillOnPrimaryContainerTL15))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgSend,
                    height: getVerticalSize(25.0),
                    width: getHorizontalSize(25.0)))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
