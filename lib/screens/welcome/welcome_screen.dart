import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            colors: [
              Color(0xFFF8FAF7),
              Color(0xFFE8F5E9),
            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

          ),

        ),


        child: Padding(

          padding: const EdgeInsets.all(30),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [


              const Icon(

                Icons.agriculture,

                size: 120,

                color: Color(0xFF2E7D32),

              ),


              const SizedBox(height: 30),


              const Text(

                'Agro Native Origins',

                textAlign: TextAlign.center,

                style: TextStyle(

                  fontSize: 32,

                  fontWeight: FontWeight.bold,

                  color: Color(0xFF2E7D32),

                ),

              ),


              const SizedBox(height: 15),


              const Text(

                'Del campo a tus manos.\n'
                'Conectamos productores locales '
                'con consumidores.',

                textAlign: TextAlign.center,

                style: TextStyle(

                  fontSize: 17,

                  color: Colors.black54,

                ),

              ),


              const SizedBox(height: 50),


              SizedBox(

                width: double.infinity,

                height: 55,

                child: ElevatedButton(

                  onPressed: () {
                     Navigator.pushNamed(
                     context,
                    '/register',
                   );
                  },


                  child: const Text(

                    'Crear cuenta',

                    style: TextStyle(

                      fontSize: 18,

                    ),

                  ),

                ),

              ),


              const SizedBox(height: 15),


              SizedBox(

                width: double.infinity,

                height: 55,

                child: OutlinedButton(

                  onPressed: () {
                    Navigator.pushNamed(
                   context,
                   '/login',
                  );
                  },

                  child: const Text(

                    'Iniciar sesión',

                    style: TextStyle(

                      fontSize: 18,

                    ),

                  ),

                ),

              ),


            ],

          ),

        ),

      ),

    );

  }

}