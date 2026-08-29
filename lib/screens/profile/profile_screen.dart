
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 10),

          const CircleAvatar(
            radius: 55,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Juan Pérez',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            'juanperez@gmail.com',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFE8F5E9),
            ),
            child: const Text(
              '🛒 Consumidor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32),
              ),
            ),
          ),

          const SizedBox(height: 30),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Mi cuenta',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 15),

          _OpcionPerfil(
            icono: Icons.person_outline,
            titulo: 'Editar perfil',
            subtitulo: 'Actualiza tus datos personales',
          ),

          _OpcionPerfil(
            icono: Icons.location_on_outlined,
            titulo: 'Dirección',
            subtitulo: 'Configura tu dirección de entrega',
          ),

          _OpcionPerfil(
            icono: Icons.notifications_outlined,
            titulo: 'Notificaciones',
            subtitulo: 'Gestiona tus notificaciones',
          ),

          _OpcionPerfil(
            icono: Icons.lock_outline,
            titulo: 'Seguridad',
            subtitulo: 'Contraseña y seguridad de la cuenta',
          ),

          const SizedBox(height: 20),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Aplicación',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 15),

          _OpcionPerfil(
            icono: Icons.help_outline,
            titulo: 'Ayuda',
            subtitulo: 'Preguntas frecuentes y soporte',
          ),
          
          _OpcionPerfil(
            icono: Icons.info_outline,
            titulo: 'Acerca de',
            subtitulo: 'Agro Native Origins',
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 55,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text(
                'Cerrar sesión',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _OpcionPerfil extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String subtitulo;

  const _OpcionPerfil({
    required this.icono,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFFE8F5E9),
          ),
          child: Icon(
            icono,
            color: const Color(0xFF2E7D32),
          ),
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitulo),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 17,
        ),
        onTap: () {},
      ),
    );
  }
}
