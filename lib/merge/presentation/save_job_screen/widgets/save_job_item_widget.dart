import '../../export.dart';
import 'chipviewemploym1_item_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SaveJobItemWidget extends StatelessWidget {
  const SaveJobItemWidget({Key? key})
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
                  svgPath: ImageConstant.imgOverflowmenuBlueGray70001,
                  height: getSize(
                    20,
                  ),
                  width: getSize(
                    20,
                  ),
                  margin: getMargin(
                    top: 10,
                    bottom: 10,
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
                  style: CustomTextStyles.bodySmallOpenSans,
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
                    bottom: 7,
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
                    bottom: 1,
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
              top: 17,
            ),
            child: Wrap(
              runSpacing: getVerticalSize(
                5,
              ),
              spacing: getHorizontalSize(
                5,
              ),
              children: List<Widget>.generate(
                  3, (index) => Chipviewemploym1ItemWidget()),
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
