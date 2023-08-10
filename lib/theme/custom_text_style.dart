import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBluegray700_1 => theme.textTheme.bodySmall!.copyWith(
        color: PrimaryColors.blueGray700,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: PrimaryColors.gray90001,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: PrimaryColors.blueGray700,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: PrimaryColors.blueGray300,
      );
  static get bodySmallOpenSansGray900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: PrimaryColors.gray900,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: PrimaryColors.gray900,
      );
  static get bodySmallOpenSansBluegray700 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: PrimaryColors.blueGray700,
      );
  // Label text style
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: PrimaryColors.gray900,
      );
  // Title text style
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: PrimaryColors.indigo900,
      );
  // Display text style
  static get displayMediumOrangeA200 => theme.textTheme.displayMedium!.copyWith(
        color: PrimaryColors.orangeA200,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }
}
