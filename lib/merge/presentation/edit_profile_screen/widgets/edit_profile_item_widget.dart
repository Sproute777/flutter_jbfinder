import 'chipviewenglish1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class EditProfileItemWidget extends StatelessWidget {
  const EditProfileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 20,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 3,
              top: 3,
            ),
            child: Row(
              children: [
                Container(
                  height: getVerticalSize(
                    19,
                  ),
                  width: getHorizontalSize(
                    17,
                  ),
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgRectangle165,
                        height: getSize(
                          9,
                        ),
                        width: getSize(
                          9,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCursor,
                        height: getSize(
                          9,
                        ),
                        width: getSize(
                          9,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: getMargin(
                            left: 1,
                            right: 2,
                          ),
                          padding: getPadding(
                            all: 2,
                          ),
                          decoration: AppDecoration.outline7.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar19x9,
                            height: getSize(
                              9,
                            ),
                            width: getSize(
                              9,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 3,
                    bottom: 1,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgEdit,
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
          Padding(
            padding: getPadding(
              top: 40,
            ),
            child: Wrap(
              runSpacing: getVerticalSize(
                5,
              ),
              spacing: getHorizontalSize(
                5,
              ),
              children: List<Widget>.generate(
                  5, (index) => Chipviewenglish1ItemWidget()),
            ),
          ),
        ],
      ),
    );
  }
}
