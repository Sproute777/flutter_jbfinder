import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../core/utils/size_utils.dart';
import 'theme_helper.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: PrimaryColors.indigo900,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: PrimaryColors.gray50,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: PrimaryColors.whiteA700,
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
