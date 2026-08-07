import '../../core/routes/app_routes.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState() {
    super.initState();


    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );


    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );


    _controller.forward();

    Future.delayed(
  const Duration(seconds: 3),
  () {

    Navigator.pushReplacementNamed(
      context,
      AppRoutes.welcome,
    );

  },
);
  }
  


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            colors: [
              Color(0xFF2E7D32),
              Color(0xFF66BB6A),
            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

          ),

        ),


        child: FadeTransition(

          opacity: _animation,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [


              const Icon(

                Icons.eco,

                size: 100,

                color: Colors.white,

              ),


              const SizedBox(height: 20),


              const Text(

                'Agro Native Origins',

                style: TextStyle(

                  fontSize: 28,

                  fontWeight: FontWeight.bold,

                  color: Colors.white,

                ),

              ),


              const SizedBox(height: 10),


              const Text(

                'Conectando productores\ncon consumidores',

                textAlign: TextAlign.center,

                style: TextStyle(

                  fontSize: 16,

                  color: Colors.white70,

                ),

              ),


            ],

          ),

        ),

      ),

    );

  }

}