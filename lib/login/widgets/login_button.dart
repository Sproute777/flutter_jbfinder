import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/theme_helper.dart';

enum LoginButtonColors {
  indigo(PrimaryColors.indigo900),
  pink(PrimaryColors.lightPink);

  final Color color;
  const LoginButtonColors(this.color);
}

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final LoginButtonColors loginButtonColors;
  final bool useGoogleIcon;
  const LoginButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.useGoogleIcon = false,
    this.loginButtonColors = LoginButtonColors.indigo,
  });

  @override
  Widget build(BuildContext context) {
    final child = useGoogleIcon
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 11,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                child: Image.asset(
                  ImageConstant.imgGoogle2,
                  height: 20,
                  width: 15,
                ),
              ),
              Text(text)
            ],
          )
        : Text(text);
    return Padding(
      padding: EdgeInsets.only(
        left: 32,
        top: 32,
        right: 32,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: loginButtonColors.color,
          textStyle: theme.textTheme.titleSmall!,
          minimumSize: Size(double.maxFinite, 50.0),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
