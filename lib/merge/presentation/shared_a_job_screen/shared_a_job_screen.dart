import 'package:flutter/material.dart';

import '../export.dart';

class SharedAJobScreen extends StatelessWidget {
  const SharedAJobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 42,
            right: 20,
            bottom: 42,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Shared a Job",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumGray90001,
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: getSize(
                        56,
                      ),
                      width: getSize(
                        56,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          28,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 11,
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Text(
                              "Orlando Diggs",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "California, USA",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Text(
                  "Description",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 9,
                  bottom: 5,
                ),
                padding: getPadding(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 10,
                ),
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 11,
                      ),
                      child: Text(
                        "Hey guys",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        283,
                      ),
                      margin: getMargin(
                        top: 13,
                        right: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Today I am opening a job vacancy in the field of ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "UI/UX Designer",
                              style: theme.textTheme.labelLarge,
                            ),
                            TextSpan(
                              text: " at an ",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Apple company",
                              style: theme.textTheme.labelLarge,
                            ),
                            TextSpan(
                              text:
                                  ". To see a job description, please see below.",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 33,
                      ),
                      padding: getPadding(
                        left: 14,
                        top: 20,
                        right: 14,
                        bottom: 20,
                      ),
                      decoration: AppDecoration.fill16.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            margin: getMargin(
                              bottom: 73,
                            ),
                            padding: getPadding(
                              all: 6,
                            ),
                            decoration: IconButtonStyleHelper.fillGray400TL20,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLogoapple,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "UI/UX Designer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "Job vacancies from Apple company",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmallOpenSans,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "California, USA",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        Container(
                                          height: getSize(
                                            2,
                                          ),
                                          width: getSize(
                                            2,
                                          ),
                                          margin: getMargin(
                                            left: 7,
                                            top: 6,
                                            bottom: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.blueGray70001,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                          ),
                                          child: Text(
                                            "On-site",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallOpenSans,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomOutlinedButton(
                                    text: "Application details",
                                    margin: getMargin(
                                      top: 18,
                                    ),
                                    buttonStyle: CustomButtonStyles
                                        .outlineGray90002
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(
                                      getHorizontalSize(
                                        143,
                                      ),
                                      getVerticalSize(
                                        32,
                                      ),
                                    ))),
                                    buttonTextStyle:
                                        CustomTextStyles.bodySmallGray90002,
                                  ),
                                ],
                              ),
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
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 20,
            right: 19,
            bottom: 33,
          ),
          decoration: AppDecoration.outline6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgInstagramOrange400,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUserOrange40024x24,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  left: 20,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 5,
                  bottom: 2,
                ),
                child: Text(
                  "Add hashtag",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeOrange400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
