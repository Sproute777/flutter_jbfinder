import 'package:flutter/material.dart';
import '../core/utils/size_utils.dart';
import 'theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallOpenSansOrange400 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.orange400,
      );
  static get bodyMediumDMSansOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOpenSans_1 => theme.textTheme.bodySmall!.openSans;
  static get bodyMediumDMSansBluegray80003 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.blueGray80003,
      );
  static get bodySmallOpenSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOpenSansBluegray30003_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallOpenSansBluegray30003_2 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmallRedA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA20001,
      );
  static get bodySmallOpenSansOnPrimary =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallOpenSansGray40002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray40002,
      );
  static get bodyLargeOpenSansOrange400 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.orange400,
      );
  static get bodySmallOpenSansGray40001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallOpenSansBluegray90001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumDMSansOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodySmallBluegray3000310 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBluegray3000311 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodyMediumDMSans => theme.textTheme.bodyMedium!.dMSans.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodySmallGray9000410 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumDMSansBlack900 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallRedA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmallOpenSansGray90002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallOpenSansGray90003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmallBluegray30003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmallOpenSansGray90004 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallBluegray30002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30002,
      );
  static get bodySmallOnPrimaryContainer_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOpenSansBluegray40001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallOpenSans => theme.textTheme.bodySmall!.openSans;
  static get bodySmallOpenSansBluegray90001_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBluegray30003_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmallOrange400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange400,
      );
  static get bodyMediumDMSans_1 => theme.textTheme.bodyMedium!.dMSans;
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodySmallOpenSansGray60001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallOpenSans10 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumDMSansGray90002 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumDMSansGray90004 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallOpenSansRedA200 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmallOpenSansBluegray30003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray30003,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallGray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Label text style
  static get labelLargeOpenSansSemiBold =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOnPrimaryContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          13,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray90003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOrange400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange400,
      );
  static get labelLargeOpenSansOrange400 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.orange400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray30003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30003,
      );
  static get labelLargeOpenSansBluegray30003 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray30003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumExtraBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get labelLargeOpenSansBluegray900 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumBluegray80002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80002,
      );
  static get titleMediumOpenSans =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90003_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeGray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleMediumOpenSans_1 => theme.textTheme.titleMedium!.openSans;
  static get titleSmallOpenSansGray90003 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallOpenSansGray90001 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansOnPrimaryContainer =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansBluegray900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainer_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallOpenSansPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOpenSansBlack900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallOpenSansSemiBold =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90003 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansGray90001 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallOpenSans =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: getFontSize(
          15,
        ),
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
