import 'package:flutter/material.dart';

import '../core/utils/size_utils.dart';
import '../theme/theme_helper.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: getSize(height ?? 0),
          padding: EdgeInsets.all(0),
          icon: Container(
            alignment: Alignment.center,
            width: getSize(width ?? 0),
            height: getSize(height ?? 0),
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray100,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillDeeppurple100 => BoxDecoration(
        color: appTheme.deepPurple100,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray20026 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20026.withOpacity(0.4),
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get fillPink40075 => BoxDecoration(
        color: appTheme.pink40075,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray2003f => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray2003fTL10 => BoxDecoration(
        color: appTheme.orangeA20001,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            33.00,
          ),
        ),
      );
  static BoxDecoration get fillOrange400 => BoxDecoration(
        color: appTheme.orange400.withOpacity(0.39),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            33.00,
          ),
        ),
      );
  static BoxDecoration get fillYellowA70087 => BoxDecoration(
        color: appTheme.yellowA70087,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get fillPink40075TL23 => BoxDecoration(
        color: appTheme.pink40075,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get fillOnPrimaryContainerTL23 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.44),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray2003fTL101 => BoxDecoration(
        color: appTheme.orange400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        ),
      );
  static BoxDecoration get fillOrange400TL21 => BoxDecoration(
        color: appTheme.orange400.withOpacity(0.39),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        ),
      );
  static BoxDecoration get fillPink40075TL15 => BoxDecoration(
        color: appTheme.pink40075,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        ),
      );
  static BoxDecoration get fillOnErrorContainerTL15 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        ),
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        ),
      );
  static BoxDecoration get fillGray400TL20 => BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      );
  static BoxDecoration get fillOnErrorContainerTL20 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      );
}
