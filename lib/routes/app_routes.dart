import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/login/view/logo_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/splash_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/login_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/sign_up_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/forgot_password_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/check_your_email_screen.dart';
import 'package:jobfinder_figma_pro_v2/login/view/successfully_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String checkYourEmailScreen = '/check_your_email_screen';

  static const String successfullyScreen = '/successfully_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logoScreen: (context) => LogoScreen(),
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    checkYourEmailScreen: (context) => CheckYourEmailScreen(),
    successfullyScreen: (context) => SuccessfullyScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
