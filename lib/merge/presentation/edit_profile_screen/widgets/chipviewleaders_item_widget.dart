import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewleadersItemWidget extends StatelessWidget {
  const ChipviewleadersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 15,
        right: 15,
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
