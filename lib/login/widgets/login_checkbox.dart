import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../theme/custom_text_style.dart';

class LoginCheckbox extends StatelessWidget {
  const LoginCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith<Color>((states) {
            return PrimaryColors.blueGray300;
          }),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          value: false,
          onChanged: (bool? value) {},
        ),
        Text(
          'Remember me',
          style: CustomTextStyles.bodySmallBluegray300,
        ),
      ],
    );
  }
}
