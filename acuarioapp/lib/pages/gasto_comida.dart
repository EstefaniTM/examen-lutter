import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GastocomidaPage extends StatefulWidget {
  const GastocomidaPage({super.key});

  @override
  State<GastocomidaPage> createState() => _GastocomidaPageState();
}

class _GastocomidaPageState extends State<GastocomidaPage> {
  String n3Text = 'lunes';
  String resultText = '';

    void calculateAverage() {
    double total = 0;
    
    if (n3Text == 'combo infantil') {
      total = 2.30;
    } else if (n3Text == 'combo adulto') {
      total = 5.50;
    } else if (n3Text == 'combo familiar') {
      total = 12.00;
    }

    setState(() {
      resultText = 'Total: \$${total.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comida'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            

              TextField(
                decoration: const InputDecoration(
                  labelText: 'combos',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  n3Text = value;
                },
              ),

              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: calculateAverage,
                child: const Text('Calcular Total'),
              ),

              const SizedBox(height: 16),
              Text(resultText),
            ],
          ),
        ),
      ),
    );
  }
}
