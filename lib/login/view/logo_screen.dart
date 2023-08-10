import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/theme_helper.dart';


class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryColors.indigo900,
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageConstant.imgUser,
                height: 60,
                width: 60,
              ),
              SizedBox(height: 2),
              Text(
                "Jobspot",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
