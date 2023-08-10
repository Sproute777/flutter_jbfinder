import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class SkillItemWidget extends StatelessWidget {
  const SkillItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 15,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Leadership",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: appTheme.blueGray70001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
      ),
      deleteIcon: CustomImageView(
        svgPath: ImageConstant.imgClose,
        height: getSize(
          24,
        ),
        width: getSize(
          24,
        ),
        margin: getMargin(
          left: 6,
        ),
      ),
      onDeleted: () {},
      selected: false,
      backgroundColor: appTheme.blueGray1006c,
      selectedColor: appTheme.blueGray1006c,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
