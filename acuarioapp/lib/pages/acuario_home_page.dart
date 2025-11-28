import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AcuarioHomePage extends StatelessWidget {
  const AcuarioHomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parque Acuático Familia')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Seleccione una opción:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            const Text(
              'Venbenido al acuario el pecesito',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () => context.go('/boletos'),
              child: const Text('Boletos y descuentos'),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () => context.go('/gasto'),
              child: const Text('Gasto en comida'),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () => context.go('/plan'),
              child: const Text('Plan de toboganes'),
            ),

             ElevatedButton(
              onPressed: () => context.go('/lista'),
              child: const Text('Lista Dinamica'),
            ),
          ],
        ),
      ),
    );
  }
}
