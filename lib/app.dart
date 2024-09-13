import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/bindings/general_binding.dart';
import 'package:minimart/routes/app.routes.dart';
import 'package:minimart/utils/constants/color.dart';
import 'package:minimart/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MiniBazaar',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBuildings(),
      getPages: AppRoutes.pages,
      home: const Scaffold(
        backgroundColor: AppColors.Primary,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      ),
    );
  }
}
