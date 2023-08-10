import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class NoSavingsScreen extends StatelessWidget {
  NoSavingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No Savings",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumOpenSansGray90001,
              ),
              Container(
                width: getHorizontalSize(
                  212,
                ),
                margin: getMargin(
                  top: 18,
                ),
                child: Text(
                  "You don't have any jobs saved, please find it in search to save jobs",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallOpenSans,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgIllustrationIndigoA200207x219,
                height: getVerticalSize(
                  207,
                ),
                width: getHorizontalSize(
                  219,
                ),
                alignment: Alignment.centerRight,
                margin: getMargin(
                  top: 50,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Find a job".toUpperCase(),
                margin: getMargin(
                  bottom: 12,
                ),
                buttonStyle: CustomButtonStyles.outlineIndigo2002d.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    213,
                  ),
                  getVerticalSize(
                    50,
                  ),
                ))),
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainer_2,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.Infogray90002:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}
