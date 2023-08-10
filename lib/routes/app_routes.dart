import 'package:flutter/material.dart';
import 'package:jobfinder_figma_pro_v2/presentation/logo_screen/logo_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/splash_screen/splash_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/login_screen/login_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/check_your_email_screen/check_your_email_screen.dart';
import 'package:jobfinder_figma_pro_v2/presentation/successfully_screen/successfully_screen.dart';
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
