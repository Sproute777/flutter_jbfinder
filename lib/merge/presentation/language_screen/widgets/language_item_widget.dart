import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  const LanguageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 20,
        right: 15,
        bottom: 20,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4,
                height: getSize(
                  30,
                ),
                width: getSize(
                  30,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    15,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 7,
                  bottom: 6,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgTrash,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  top: 3,
                  bottom: 3,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 14,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallBluegray30003,
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
              style: CustomTextStyles.bodySmallBluegray30003,
            ),
          ),
        ],
      ),
    );
  }
}
