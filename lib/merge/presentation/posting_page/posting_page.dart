import '../posting_page/widgets/posting_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class PostingPage extends StatelessWidget {
  PostingPage({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fill,
          child: Container(
            padding: getPadding(
              left: 19,
              right: 19,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgArrow1,
                  height: getVerticalSize(
                    1,
                  ),
                  width: getHorizontalSize(
                    18,
                  ),
                  margin: getMargin(
                    left: 11,
                    top: 36,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 1,
                    top: 12,
                  ),
                  decoration: AppDecoration.fill10.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 25,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse95,
                              height: getSize(
                                50,
                              ),
                              width: getSize(
                                50,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 5,
                                bottom: 7,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                    ),
                                    child: Text(
                                      "Arnold Leonardo",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: CustomRadioButton(
                                      text: "21 minuts ago",
                                      value: "21 minuts ago",
                                      groupValue: radioGroup,
                                      margin: getMargin(
                                        top: 5,
                                      ),
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      textStyle: CustomTextStyles
                                          .bodySmallBluegray3000310,
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
                      Container(
                        width: getHorizontalSize(
                          239,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                          right: 75,
                        ),
                        child: Text(
                          "What are the characteristics of a fake job call form?",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          281,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 15,
                          right: 33,
                        ),
                        child: Text(
                          "Because I always find fake job calls so I'm confused which job to take can you share your knowledge here? thank you",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          margin: getMargin(
                            top: 33,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 20,
                            right: 26,
                            bottom: 20,
                          ),
                          decoration: AppDecoration.fill11.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 3,
                                  bottom: 6,
                                ),
                                child: Text(
                                  "12",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .bodySmallOpenSansGray60001,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgFile,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                margin: getMargin(
                                  left: 26,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 3,
                                  bottom: 6,
                                ),
                                child: Text(
                                  "10",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .bodySmallOpenSansGray60001,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgReply,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 3,
                                  right: 5,
                                  bottom: 6,
                                ),
                                child: Text(
                                  "2",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .bodySmallOpenSansGray60001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(
                      left: 1,
                      top: 34,
                    ),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(
                            11,
                          ),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return PostingItemWidget();
                      },
                    ),
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
