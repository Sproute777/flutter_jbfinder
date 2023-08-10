import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class CreatJobOrItemWidget extends StatelessWidget {
  const CreatJobOrItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 28,
        top: 8,
        right: 28,
        bottom: 8,
      ),
      decoration: AppDecoration.fill10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 43,
            width: 43,
            margin: getMargin(
              top: 7,
            ),
            padding: getPadding(
              all: 9,
            ),
            decoration: IconButtonStyleHelper.fillOrange50,
            child: CustomImageView(
              svgPath: ImageConstant.imgTrashOrange40043x43,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.labelLargeOpenSans,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOpenSansBluegray30003_1,
            ),
          ),
        ],
      ),
    );
  }
}
