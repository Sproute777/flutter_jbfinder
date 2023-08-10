import 'package:flutter/material.dart';

import '../../export.dart';

// ignore: must_be_immutable
class Chipviewfulltim2ItemWidget extends StatelessWidget {
  const Chipviewfulltim2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 20,
        right: 20,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Junior",
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
