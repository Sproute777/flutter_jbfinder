import 'package:flutter/material.dart';
import 'package:the_s_application4/core/app_export.dart';
import 'package:the_s_application4/presentation/posting_page/posting_page.dart';
import 'package:the_s_application4/widgets/custom_bottom_bar.dart';
import 'package:the_s_application4/widgets/custom_elevated_button.dart';

class NoMessageScreen extends StatelessWidget {
  NoMessageScreen({Key? key})
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
              CustomImageView(
                svgPath: ImageConstant.imgIllustrationIndigoA200,
                height: getVerticalSize(
                  239,
                ),
                width: getHorizontalSize(
                  243,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 44,
                ),
                child: Text(
                  "No Message",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumGray90001,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  232,
                ),
                margin: getMargin(
                  top: 19,
                ),
                child: Text(
                  "You currently have no incoming messages thank you",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CustomElevatedButton(
                text: "Create a message".toUpperCase(),
                margin: getMargin(
                  top: 75,
                  bottom: 6,
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
