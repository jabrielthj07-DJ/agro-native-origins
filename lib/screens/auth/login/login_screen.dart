import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(

        padding: const EdgeInsets.all(30),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            const Icon(
              Icons.eco,
              size: 90,
              color: Color(0xFF2E7D32),
            ),


            const SizedBox(height: 20),


            const Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 40),


            TextField(

              decoration: InputDecoration(

                labelText: 'Correo',

                prefixIcon: Icon(Icons.email),

                border: OutlineInputBorder(),

              ),

            ),


            const SizedBox(height: 20),


            TextField(

              obscureText: true,

              decoration: InputDecoration(

                labelText: 'Contraseña',

                prefixIcon: Icon(Icons.lock),

                border: OutlineInputBorder(),

              ),

            ),


            const SizedBox(height: 30),


            SizedBox(

              width: double.infinity,

              height: 55,

              child: ElevatedButton(

                onPressed: () {},

                child: const Text(
                  'Ingresar',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

              ),

            ),


            TextButton(

              onPressed: () {

              },

              child: const Text(
                '¿No tienes cuenta? Registrarse',
              ),

            )


          ],

        ),

      ),

    );

  }

}