
import 'package:flutter/material.dart';

class PublishScreen extends StatelessWidget {
  const PublishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Publicar producto',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Comparte tus productos con los consumidores.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_photo_alternate_outlined,
                  size: 55,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Agregar imagen del producto',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Nombre del producto',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Ej. Tomate fresco',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Categoría',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            hint: const Text('Selecciona una categoría'),
            items: const [
              DropdownMenuItem(
                value: 'Hortalizas',
                child: Text('Hortalizas'),
              ),
              DropdownMenuItem(
                value: 'Frutas',
                child: Text('Frutas'),
              ),
              DropdownMenuItem(
                value: 'Granos',
                child: Text('Granos'),
              ),
              DropdownMenuItem(
                value: 'Otros',
                child: Text('Otros'),
              ),
            ],
            onChanged: (value) {},
          ),

          const SizedBox(height: 20),

          const Text(
            'Precio',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Ej. 45.00',
              prefixText: 'C\$ ',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Cantidad disponible',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Ej. 20',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Descripción',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Describe tu producto...',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.publish),
              label: const Text(
                'Publicar producto',
                style: TextStyle(
                  fontSize: 18,
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

