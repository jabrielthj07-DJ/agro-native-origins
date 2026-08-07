import 'package:flutter/material.dart';

import 'core/theme/apptheme.dart';
import 'core/routes/app_routes.dart';


void main() {
  runApp(const AgroNativeOriginsApp());
}


class AgroNativeOriginsApp extends StatelessWidget {

  const AgroNativeOriginsApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Agro Native Origins',

      theme: AppTheme.lightTheme,

      initialRoute: AppRoutes.splash,


      routes: {

        AppRoutes.splash: (context) => const Scaffold(

          body: Center(

            child: Text(
              'Agro Native Origins',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),

        ),

      },

    );

  }

}