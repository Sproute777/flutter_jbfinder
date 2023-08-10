import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/company_two_page/company_two_page.dart';
import 'package:the_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:the_s_application4/widgets/app_bar/custom_app_bar.dart';

class CompanyTwoTabContainerScreen extends StatefulWidget {
  const CompanyTwoTabContainerScreen({Key? key}) : super(key: key);

  @override
  CompanyTwoTabContainerScreenState createState() =>
      CompanyTwoTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CompanyTwoTabContainerScreenState
    extends State<CompanyTwoTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(215),
                          width: double.maxFinite,
                          margin: getMargin(top: 30),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomAppBar(
                                height: getVerticalSize(24),
                                leadingWidth: 375,
                                leading: Container(
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 20, right: 331),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          AppbarImage(
                                              height: getSize(24),
                                              width: getSize(24),
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              onTap: () {
                                                onTapArrowleft3(context);
                                              }),
                                          AppbarImage(
                                              height: getSize(24),
                                              width: getSize(24),
                                              svgPath:
                                                  ImageConstant.imgArrowleft)
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 22, right: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftGray90002,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    onTap: () {
                                                      onTapImgArrowlefttwo(
                                                          context);
                                                    }),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgOverflowmenuGray90002,
                                                    height: getSize(24),
                                                    width: getSize(24))
                                              ])),
                                      Container(
                                          height: getVerticalSize(177),
                                          width: double.maxFinite,
                                          margin: getMargin(top: 14),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 29,
                                                            top: 20,
                                                            right: 29,
                                                            bottom: 20),
                                                        decoration:
                                                            AppDecoration.fill6,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              15),
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
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              14),
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
                                                                                getPadding(top: 1),
                                                                            child: Text("Google", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                        Container(
                                                                            height: getSize(
                                                                                7),
                                                                            width: getSize(
                                                                                7),
                                                                            margin: getMargin(
                                                                                left: 22,
                                                                                top: 9,
                                                                                bottom: 5),
                                                                            decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 32, bottom: 1),
                                                                            child: Text("California", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)),
                                                                        Container(
                                                                            height: getSize(
                                                                                7),
                                                                            width: getSize(
                                                                                7),
                                                                            margin: getMargin(
                                                                                left: 32,
                                                                                top: 9,
                                                                                bottom: 5),
                                                                            decoration: BoxDecoration(color: appTheme.gray90002, borderRadius: BorderRadius.circular(getHorizontalSize(3)))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 24, top: 1),
                                                                            child: Text("1 day ago", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))
                                                                      ]))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: appTheme
                                                            .lightBlue100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder42),
                                                        child: Container(
                                                            height: getSize(84),
                                                            width: getSize(84),
                                                            padding: getPadding(
                                                                all: 14),
                                                            decoration: AppDecoration
                                                                .fill2
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder42),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGoogle1,
                                                                      height:
                                                                          getSize(
                                                                              54),
                                                                      width:
                                                                          getSize(
                                                                              54),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))))
                                              ]))
                                    ]))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 6),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(333),
                                        child: TabBar(
                                            controller: tabviewController,
                                            labelColor:
                                                theme.colorScheme.primary,
                                            labelStyle: TextStyle(),
                                            unselectedLabelColor: theme
                                                .colorScheme.onPrimaryContainer,
                                            unselectedLabelStyle: TextStyle(),
                                            indicator: BoxDecoration(
                                                color: appTheme.deepPurple10001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(6))),
                                            tabs: [
                                              Tab(
                                                  child: Text("Description",
                                                      overflow: TextOverflow
                                                          .ellipsis)),
                                              Tab(
                                                  child: Text("Company",
                                                      overflow: TextOverflow
                                                          .ellipsis))
                                            ])),
                                    SizedBox(
                                        height: getVerticalSize(943),
                                        child: TabBarView(
                                            controller: tabviewController,
                                            children: [
                                              CompanyTwoPage(),
                                              CompanyTwoPage()
                                            ]))
                                  ])))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowlefttwo(BuildContext context) {
    Navigator.pop(context);
  }
}
