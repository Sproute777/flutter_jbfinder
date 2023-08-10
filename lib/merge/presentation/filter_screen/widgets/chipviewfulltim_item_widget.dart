import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewfulltimItemWidget extends StatelessWidget {
  const ChipviewfulltimItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 14,
        right: 14,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Apprenticeship",
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
      selectedColor: appTheme.orangeA20001,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            6,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
