
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Mis pedidos',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Consulta el estado de tus pedidos.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Pedidos recientes',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          _PedidoCard(
            numero: '#00125',
            producto: 'Tomate fresco',
            cantidad: '2 unidades',
            precio: 'C\$ 90.00',
            fecha: '28 Ago 2026',
            estado: 'Entregado',
            icono: Icons.eco,
          ),

          _PedidoCard(
            numero: '#00124',
            producto: 'Maíz criollo',
            cantidad: '1 unidad',
            precio: 'C\$ 60.00',
            fecha: '27 Ago 2026',
            estado: 'En camino',
            icono: Icons.grass,
          ),

          _PedidoCard(
            numero: '#00123',
            producto: 'Plátano verde',
            cantidad: '3 unidades',
            precio: 'C\$ 105.00',
            fecha: '25 Ago 2026',
            estado: 'Pendiente',
            icono: Icons.spa,
          ),

          const SizedBox(height: 15),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFE8F5E9),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 30,
                  color: Color(0xFF2E7D32),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Aquí podrás consultar tus pedidos y conocer su estado.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PedidoCard extends StatelessWidget {
  final String numero;
  final String producto;
  final String cantidad;
  final String precio;
  final String fecha;
  final String estado;
  final IconData icono;

  const _PedidoCard({
    required this.numero,
    required this.producto,
    required this.cantidad,
    required this.precio,
    required this.fecha,
    required this.estado,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFE8F5E9),
                  ),
                  child: Icon(
                    icono,
                    size: 35,
                    color: const Color(0xFF2E7D32),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        producto,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        numero,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        cantidad,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

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

            const SizedBox(height: 15),

            const Divider(),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fecha,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFE8F5E9),
                  ),
                  child: Text(
                    estado,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E7D32),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

