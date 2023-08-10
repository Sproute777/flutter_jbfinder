import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'routes/app_routes.dart';
import 'theme/theme_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'the_s_application4',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.appNavigationScreen,
      routes: AppRoutes.routes,
    );
  }
}
