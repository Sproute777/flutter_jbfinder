import 'package:flutter/material.dart';

import '../export.dart';
// ignore_for_file: must_be_immutable
class PostPage extends StatefulWidget {
  const PostPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostPageState createState() => PostPageState();
}

class PostPageState extends State<PostPage>
    with AutomaticKeepAliveClientMixin<PostPage> {
  String radioGroup = "";

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 34,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Opacity(
                              opacity: 0.2,
                              child: CustomElevatedButton(
                                text: "Follow",
                                margin: getMargin(
                                  right: 8,
                                ),
                                leftIcon: Container(
                                  margin: getMargin(
                                    right: 10,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                  ),
                                ),
                                buttonStyle: CustomButtonStyles
                                    .fillDeeporange100
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(
                                  double.maxFinite,
                                  getVerticalSize(
                                    40,
                                  ),
                                ))),
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallRedA200,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.2,
                              child: CustomElevatedButton(
                                text: "Visit website",
                                margin: getMargin(
                                  left: 8,
                                ),
                                leftIcon: Container(
                                  margin: getMargin(
                                    right: 10,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgCut,
                                  ),
                                ),
                                buttonStyle: CustomButtonStyles
                                    .fillDeeporange100
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(
                                  double.maxFinite,
                                  getVerticalSize(
                                    40,
                                  ),
                                ))),
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallRedA200,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: getMargin(
                          top: 76,
                        ),
                        padding: getPadding(
                          left: 10,
                          top: 18,
                          right: 10,
                          bottom: 18,
                        ),
                        decoration: AppDecoration.fill10.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 10,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGoogle1,
                                    height: getSize(
                                      50,
                                    ),
                                    width: getSize(
                                      50,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 7,
                                      bottom: 6,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                          ),
                                          child: Text(
                                            "Google Inc",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: CustomRadioButton(
                                            text: "21 minuts ago",
                                            value: "21 minuts ago",
                                            groupValue: radioGroup,
                                            margin: getMargin(
                                              top: 3,
                                            ),
                                            textStyle: CustomTextStyles
                                                .bodySmallOpenSansBluegray30003,
                                            onChange: (value) {
                                              radioGroup = value;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: Container(
                            //     width: getHorizontalSize(
                            //       286,
                            //     ),
                            //     margin: getMargin(
                            //       top: 16,
                            //     ),
                            //     child: ReadMoreText(
                            //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo... ",
                            //       trimLines: 3,
                            //       colorClickableText: appTheme.orange400,
                            //       trimMode: TrimMode.Line,
                            //       trimCollapsedText: "Read more",
                            //       moreStyle: CustomTextStyles.bodySmallOpenSans,
                            //       lessStyle: CustomTextStyles.bodySmallOpenSans,
                            //     ),
                            //   ),
                            // ),
                            Container(
                              height: getVerticalSize(
                                166,
                              ),
                              width: getHorizontalSize(
                                314,
                              ),
                              margin: getMargin(
                                left: 1,
                                top: 16,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: getVerticalSize(
                                      166,
                                    ),
                                    width: getHorizontalSize(
                                      314,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        20,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomIconButton(
                                    height: 46,
                                    width: 46,
                                    padding: getPadding(
                                      all: 12,
                                    ),
                                    decoration: IconButtonStyleHelper
                                        .fillOnPrimaryContainerTL23,
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgForward,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                                top: 18,
                              ),
                              child: Text(
                                "What's it like to work at Google?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                                top: 3,
                                bottom: 59,
                              ),
                              child: Text(
                                "Youtube.com",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray9000410,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
