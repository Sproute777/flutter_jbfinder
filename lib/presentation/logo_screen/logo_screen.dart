import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgUser,
                height: getSize(
                  60,
                ),
                width: getSize(
                  60,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Jobspot",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
