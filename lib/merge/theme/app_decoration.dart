import 'package:flutter/material.dart';
import '../core/utils/size_utils.dart';
import 'theme_helper.dart';

class AppDecoration {
  static BoxDecoration get fill19 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.39),
      );
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fill16 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fill15 => BoxDecoration(
        color: appTheme.red70001,
      );
  static BoxDecoration get txtFill5 => BoxDecoration(
        color: appTheme.gray400.withOpacity(0.56),
      );
  static BoxDecoration get fill18 => BoxDecoration(
        color: appTheme.blueGray1006c,
      );
  static BoxDecoration get txtFill4 => BoxDecoration(
        color: appTheme.orange400,
      );
  static BoxDecoration get fill17 => BoxDecoration(
        color: appTheme.deepOrangeA100.withOpacity(0.42),
      );
  static BoxDecoration get txtFill3 => BoxDecoration(
        color: appTheme.orange100.withOpacity(0.42),
      );
  static BoxDecoration get txtFill2 => BoxDecoration(
        color: appTheme.blueGray1006c.withOpacity(0.39),
      );
  static BoxDecoration get txtFill1 => BoxDecoration(
        color: appTheme.deepOrangeA2006c,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.blueGray1006c,
      );
  static BoxDecoration get fill23 => BoxDecoration(
        color: theme.colorScheme.onSecondary,
      );
  static BoxDecoration get fill22 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get txtOutline => BoxDecoration();
  static BoxDecoration get fill21 => BoxDecoration(
        color: appTheme.blueGray90090,
      );
  static BoxDecoration get fill20 => BoxDecoration(
        color: appTheme.orange400,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill9 => BoxDecoration(
        color: appTheme.orangeA20001,
      );
  static BoxDecoration get fill8 => BoxDecoration(
        color: appTheme.deepPurpleA700.withOpacity(0.05),
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get outline2 => BoxDecoration();
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.orange100,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20026.withOpacity(0.2),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill7 => BoxDecoration(
        color: appTheme.teal90099,
      );
  static BoxDecoration get outline4 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d.withOpacity(0.2),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill6 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color: appTheme.deepPurpleA700.withOpacity(0.05),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fill12 => BoxDecoration(
        color: appTheme.deepOrange100.withOpacity(0.42),
      );
  static BoxDecoration get outline6 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill11 => BoxDecoration(
        color: appTheme.deepPurpleA700.withOpacity(0.39),
      );
  static BoxDecoration get outline5 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d.withOpacity(0.1),
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.indigo100,
      );
  static BoxDecoration get fill14 => BoxDecoration(
        color: appTheme.blue900,
      );
  static BoxDecoration get outline8 => BoxDecoration(
        color: appTheme.deepPurpleA10001,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.lightBlue100,
      );
  static BoxDecoration get outline7 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill13 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fill10 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get txtOutline1 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius circleBorder42 = BorderRadius.circular(
    getHorizontalSize(
      42,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius txtRoundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
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
