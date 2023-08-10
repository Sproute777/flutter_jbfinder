import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobfinder_figma_pro_v2/theme/theme_helper.dart';
import 'package:jobfinder_figma_pro_v2/routes/app_routes.dart';

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
      title: 'jobfinder_figma_pro_v2',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.appNavigationScreen,
      routes: AppRoutes.routes,
    );
  }
}
