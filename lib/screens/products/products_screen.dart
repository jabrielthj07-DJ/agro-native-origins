
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Productos',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Encuentra productos frescos de productores locales.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              hintText: 'Buscar productos...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Categorías',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _CategoriaButton(
                  nombre: 'Todos',
                  activo: true,
                ),
                _CategoriaButton(
                  nombre: 'Hortalizas',
                ),
                _CategoriaButton(
                  nombre: 'Frutas',
                ),
                _CategoriaButton(
                  nombre: 'Granos',
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Todos los productos',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          _ProductoCard(
            nombre: 'Tomate fresco',
            precio: 'C\$ 45.00',
            productor: 'Finca El Paraíso',
            icono: Icons.eco,
            categoria: 'Hortalizas',
          ),

          _ProductoCard(
            nombre: 'Maíz criollo',
            precio: 'C\$ 60.00',
            productor: 'Productor local',
            icono: Icons.grass,
            categoria: 'Granos',
          ),

          _ProductoCard(
            nombre: 'Plátano verde',
            precio: 'C\$ 35.00',
            productor: 'Finca San José',
            icono: Icons.spa,
            categoria: 'Frutas',
          ),

          _ProductoCard(
            nombre: 'Chiltoma',
            precio: 'C\$ 50.00',
            productor: 'Finca La Esperanza',
            icono: Icons.local_florist,
            categoria: 'Hortalizas',
          ),

          _ProductoCard(
            nombre: 'Frijol rojo',
            precio: 'C\$ 75.00',
            productor: 'Productor local',
            icono: Icons.grain,
            categoria: 'Granos',
          ),
        ],
      ),
    );
  }
}

class _CategoriaButton extends StatelessWidget {
  final String nombre;
  final bool activo;

  const _CategoriaButton({
    required this.nombre,
    this.activo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(nombre),
      ),
    );
  }
}

class _ProductoCard extends StatelessWidget {
  final String nombre;
  final String precio;
  final String productor;
  final String categoria;
  final IconData icono;

  const _ProductoCard({
    required this.nombre,
    required this.precio,
    required this.productor,
    required this.categoria,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFE8F5E9),
              ),
              child: Icon(
                icono,
                size: 42,
                color: const Color(0xFF2E7D32),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    categoria,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    productor,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    precio,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E7D32),
                    ),
                  ),
                ],
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

