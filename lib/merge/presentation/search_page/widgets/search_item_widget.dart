import 'package:flutter/material.dart' hide SearchController;

import '../../export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 16,
        right: 20,
        bottom: 16,
      ),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 40,
                  width: 40,
                  padding: getPadding(
                    all: 7,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle1,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgBookmark,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    bottom: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallGray90003,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "",
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
                    left: 5,
                    top: 8,
                    bottom: 5,
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
                    "California, USA",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Container(
                    width: getHorizontalSize(
                      79,
                    ),
                    padding: getPadding(
                      left: 23,
                      top: 5,
                      right: 23,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtFill.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "Design",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Container(
                    width: getHorizontalSize(
                      82,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 5,
                      right: 21,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtFill.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "Full time",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Container(
                    width: getHorizontalSize(
                      114,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 5,
                      right: 21,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtFill.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                    ),
                    child: Text(
                      "Senior designer",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 15,
              right: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "25 minute ago",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallBluegray3000310,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "15K",
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                      TextSpan(
                        text: "/",
                        style: CustomTextStyles.labelLargeBluegray30003,
                      ),
                      TextSpan(
                        text: "Mo",
                        style: CustomTextStyles.bodySmallBluegray30003_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
