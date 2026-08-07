import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {

  const RegisterScreen({super.key});


  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}


class _RegisterScreenState extends State<RegisterScreen> {


  String tipoUsuario = 'Consumidor';


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Crear cuenta'),
      ),


      body: SingleChildScrollView(

        padding: const EdgeInsets.all(25),

        child: Column(

          children: [


            const Icon(
              Icons.eco,
              size: 80,
              color: Color(0xFF2E7D32),
            ),


            const SizedBox(height: 20),


            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              decoration: InputDecoration(
                labelText: 'Apellido',
                border: OutlineInputBorder(),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              decoration: InputDecoration(
                labelText: 'Correo',
                border: OutlineInputBorder(),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              decoration: InputDecoration(
                labelText: 'Teléfono',
                border: OutlineInputBorder(),
              ),
            ),


            const SizedBox(height: 15),


            TextField(

              obscureText: true,

              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),

            ),


            const SizedBox(height: 20),


            const Text(
              'Tipo de usuario',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),


            RadioListTile(

              title: const Text('🌱 Productor'),

              value: 'Productor',

              groupValue: tipoUsuario,

              onChanged: (value){

                setState(() {

                  tipoUsuario = value!;

                });

              },

            ),


            RadioListTile(

              title: const Text('🛒 Consumidor'),

              value: 'Consumidor',

              groupValue: tipoUsuario,

              onChanged: (value){

                setState(() {

                  tipoUsuario = value!;

                });

              },

            ),


            const SizedBox(height: 20),


            SizedBox(

              width: double.infinity,

              height: 55,

              child: ElevatedButton(

                onPressed: () {},

                child: const Text(
                  'Crear cuenta',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

              ),

            )


          ],

        ),

      ),

    );

  }

}