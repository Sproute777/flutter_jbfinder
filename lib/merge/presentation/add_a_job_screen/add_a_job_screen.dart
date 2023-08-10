import 'package:flutter/material.dart';

import '../export.dart';

class AddAJobScreen extends StatelessWidget {
  const AddAJobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 44,
            right: 20,
            bottom: 44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Add a job",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
              Container(
                height: getVerticalSize(
                  150,
                ),
                width: getHorizontalSize(
                  335,
                ),
                margin: getMargin(
                  top: 29,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 20,
                          top: 25,
                          right: 20,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fill10.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "Type of workplace",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallGray90001,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: getPadding(
                              left: 20,
                              top: 23,
                              right: 20,
                              bottom: 23,
                            ),
                            decoration: AppDecoration.fill10.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "Job position*",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleSmallGray90001,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlusOrange100,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusOrange100,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 36,
                              right: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 20,
                  top: 22,
                  right: 20,
                  bottom: 22,
                ),
                decoration: AppDecoration.fill10.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 4,
                      ),
                      child: Text(
                        "Job location",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray90001,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlusOrange100,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 20,
                  top: 22,
                  right: 20,
                  bottom: 22,
                ),
                decoration: AppDecoration.fill10.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 2,
                      ),
                      child: Text(
                        "Company",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray90001,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlusOrange100,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 20,
                  top: 23,
                  right: 20,
                  bottom: 23,
                ),
                decoration: AppDecoration.fill10.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 2,
                      ),
                      child: Text(
                        "Employment type",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallGray90001,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlusOrange100,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                  bottom: 5,
                ),
                padding: getPadding(
                  left: 20,
                  top: 22,
                  right: 20,
                  bottom: 22,
                ),
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 3,
                      ),
                      child: Text(
                        "Description",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlusOrange100,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
