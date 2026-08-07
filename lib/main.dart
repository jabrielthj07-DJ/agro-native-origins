// Leyenda
// PNC = Pantalla de carga
// W = Welcome
// LG = Login
//Rg = Registrarse
import 'screens/auth/register/register_screen.dart'; // Rg
import 'screens/auth/login/login_screen.dart'; // LG
import 'screens/welcome/welcome_screen.dart'; // W
import 'screens/splash/splash_screen.dart'; // PNC

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

     AppRoutes.splash: (context) => const SplashScreen(), //PNC

     AppRoutes.welcome: (context) => const WelcomeScreen(), // W

     AppRoutes.login: (context) => const LoginScreen(), // LG

     AppRoutes.register: (context) => const RegisterScreen(),// Rg

      },

    );

  }

}