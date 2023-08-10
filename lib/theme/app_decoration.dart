import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.indigo900,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder41 = BorderRadius.circular(
    getHorizontalSize(
      41,
    ),
  );

  static BorderRadius circleBorder21 = BorderRadius.circular(
    getHorizontalSize(
      21,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;