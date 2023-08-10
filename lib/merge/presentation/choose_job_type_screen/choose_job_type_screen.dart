import 'package:flutter/material.dart';

import '../export.dart';

// ignore_for_file: must_be_immutable
class ChooseJobTypeScreen extends StatelessWidget {
  ChooseJobTypeScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = [
    "lbl_part_time2",
    "lbl_contract",
    "lbl_temporary",
    "lbl_volunteer",
    "lbl_apprenticeship"
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 20, top: 30),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(left: 20, top: 41),
                          child: Text("Add a job",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 20, top: 34, right: 20),
                              padding: getPadding(
                                  left: 20, top: 18, right: 20, bottom: 18),
                              decoration: AppDecoration.fill10.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 2),
                                          child: Text("Job position*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallGray90001)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgEdit,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 1),
                                        child: Text("Administrative Assistant",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 20, top: 10, right: 20),
                              padding: getPadding(
                                  left: 20, top: 18, right: 20, bottom: 18),
                              decoration: AppDecoration.fill10.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 3, bottom: 2),
                                          child: Text("Type of workplace",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallGray90001)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgEdit,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("On-site",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans))
                                  ]))),
                      Container(
                          height: getVerticalSize(471),
                          width: double.maxFinite,
                          margin: getMargin(top: 10),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(
                                        left: 20, right: 20, bottom: 27),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 17,
                                                  right: 20,
                                                  bottom: 17),
                                              decoration: AppDecoration.fill10
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: Text(
                                                                  "Company",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: CustomTextStyles
                                                                      .titleSmallOpenSansGray90001)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEdit,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24))
                                                        ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Text("Apple Inc",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallOpenSans))
                                                  ])),
                                          Container(
                                              margin: getMargin(top: 10),
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 18,
                                                  right: 20,
                                                  bottom: 18),
                                              decoration: AppDecoration.fill10
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: Text(
                                                                  "Type of work",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: CustomTextStyles
                                                                      .titleSmallOpenSansGray90001)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEdit,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 7, bottom: 1),
                                                        child: Text("Full Time",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallOpenSans))
                                                  ])),
                                          Container(
                                              margin: getMargin(top: 10),
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 18,
                                                  right: 20,
                                                  bottom: 18),
                                              decoration: AppDecoration.fill10
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: Text(
                                                                  "Description",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: CustomTextStyles
                                                                      .titleSmallOpenSansGray90001)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEdit,
                                                              height:
                                                                  getSize(24),
                                                              width:
                                                                  getSize(24))
                                                        ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 20),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .gray30001)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                277),
                                                        margin: getMargin(
                                                            top: 19,
                                                            right: 17,
                                                            bottom: 1),
                                                        child: Text(
                                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(left: 20, right: 20),
                                    padding: getPadding(all: 18),
                                    decoration: AppDecoration.fill10.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 1),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "Job location",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .titleSmallOpenSansGray90001)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEdit,
                                                        height: getSize(24),
                                                        width: getSize(24))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 7),
                                              child: Text("California, USA",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOpenSans))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 38,
                                        top: 26,
                                        right: 38,
                                        bottom: 26),
                                    decoration: AppDecoration.fill10.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector56,
                                              height: getVerticalSize(4),
                                              width: getHorizontalSize(30)),
                                          Padding(
                                              padding: getPadding(top: 41),
                                              child: Text("Choose Job Type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Container(
                                              width: getHorizontalSize(293),
                                              margin: getMargin(
                                                  left: 2, top: 5, right: 2),
                                              child: Text(
                                                  "Determine and choose the type of work according to what you want",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Padding(
                                              padding: getPadding(top: 46),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Full time",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    Container(
                                                        height:
                                                            getVerticalSize(15),
                                                        width:
                                                            getHorizontalSize(
                                                                18),
                                                        margin: getMargin(
                                                            bottom: 2),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              15),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              18),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              9)),
                                                                          border: Border.all(
                                                                              color: appTheme.orange400,
                                                                              width: getHorizontalSize(1))))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              10),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              12),
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .orange400,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(6)))))
                                                            ]))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 24, bottom: 5),
                                              child: Column(children: [
                                                CustomRadioButton(
                                                    width:
                                                        getHorizontalSize(299),
                                                    text: "Part time",
                                                    value: radioList[0],
                                                    groupValue: radioGroup,
                                                    textStyle: theme
                                                        .textTheme.titleSmall!,
                                                    isRightCheck: true,
                                                    onChange: (value) {
                                                      radioGroup = value;
                                                    }),
                                                CustomRadioButton(
                                                    width:
                                                        getHorizontalSize(299),
                                                    text: "Contract",
                                                    value: radioList[1],
                                                    groupValue: radioGroup,
                                                    margin: getMargin(top: 24),
                                                    textStyle: theme
                                                        .textTheme.titleSmall!,
                                                    isRightCheck: true,
                                                    onChange: (value) {
                                                      radioGroup = value;
                                                    }),
                                                CustomRadioButton(
                                                    width:
                                                        getHorizontalSize(299),
                                                    text: "Temporary",
                                                    value: radioList[2],
                                                    groupValue: radioGroup,
                                                    margin: getMargin(top: 24),
                                                    textStyle: theme
                                                        .textTheme.titleSmall!,
                                                    isRightCheck: true,
                                                    onChange: (value) {
                                                      radioGroup = value;
                                                    }),
                                                CustomRadioButton(
                                                    width:
                                                        getHorizontalSize(299),
                                                    text: "Volunteer",
                                                    value: radioList[3],
                                                    groupValue: radioGroup,
                                                    margin: getMargin(top: 22),
                                                    textStyle: theme
                                                        .textTheme.titleSmall!,
                                                    isRightCheck: true,
                                                    onChange: (value) {
                                                      radioGroup = value;
                                                    }),
                                                CustomRadioButton(
                                                    width:
                                                        getHorizontalSize(299),
                                                    text: "Apprenticeship",
                                                    value: radioList[4],
                                                    groupValue: radioGroup,
                                                    margin: getMargin(top: 24),
                                                    textStyle: theme
                                                        .textTheme.titleSmall!,
                                                    isRightCheck: true,
                                                    onChange: (value) {
                                                      radioGroup = value;
                                                    })
                                              ]))
                                        ])))
                          ]))
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
