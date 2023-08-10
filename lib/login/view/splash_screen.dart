import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobfinder_figma_pro_v2/core/app_export.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Scaffold(
                backgroundColor: PrimaryColors.gray50,
                body: Center(
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: 32,
                        top: 24,
                        bottom: 24,
                        right: 32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 32),
                          Center(
                            child: SizedBox(
                              height: 200,
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup75,
                                fit: BoxFit.contain,
                                // height: 300,
                                // width: 310,
                              ),
                            ),
                          ),
                          SizedBox(height: 48),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Find Your\n",
                                  style: theme.textTheme.displayMedium,
                                ),
                                TextSpan(
                                  text: "Dream Job Here!",
                                  style: CustomTextStyles
                                      .displayMediumOrangeA200
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Explore all the most exciting job roles basedon your interest and study major.",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  shape: CircleBorder(),
                  backgroundColor: PrimaryColors.indigo900,
                  onPressed: () {},
                  child: SizedBox.square(
                    dimension: 60,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        ImageConstant.imgArrowright,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, right: 32),
                  child: Text(
                    "Jobspot",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
