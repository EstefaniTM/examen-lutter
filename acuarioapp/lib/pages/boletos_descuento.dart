import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AverageGradePage extends StatefulWidget {
  const AverageGradePage({super.key});

  @override
  State<AverageGradePage> createState() => _AverageGradePageState();
}

class _AverageGradePageState extends State<AverageGradePage> {
  String n1Text = '';
  String n2Text = '';
  String n3Text = 'lunes';
  String resultText = '';

  void calculateAverage() {
    final n1 = double.tryParse(n1Text.replaceAll(',', '.')) ?? 0.0;
    final n2 = double.tryParse(n2Text.replaceAll(',', '.')) ?? 0.0;

    if (n1 < 0 || n2 < 0) {
      setState(() {
        resultText = ' no pueden ser negativas';
      });
      return;
    }


    final average = (n1 + n2) * 5;
    double discount = 0;
    
    if (average == 'Lunes') {
      discount = 0;
    } else if (average == 'Domingo') {
      discount = 30;
    } else if (average == 'Sabado') {
      discount = 100;
    }

    final discountAmount = average - discount;

    setState(() {
      resultText =
        'Clientes: ${n1.toStringAsFixed(2)}, ${n2.toStringAsFixed(2)}\n'
        'Descuento:  ${discount.toStringAsFixed(0)} %\n';
        'Matrícula final: ${discountAmount.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promedio de notas'),
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
              const Text(
                'Calcular el costo de los boletos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              TextField(
                decoration: const InputDecoration(
                  labelText: 'cantidad de ninos',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  n1Text = value;
                },
              ),

              const SizedBox(height: 16),

              TextField(
                decoration: const InputDecoration(
                  labelText: 'Cantidad de adultos',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  n2Text = value;
                },
              ),

              const SizedBox(height: 16),

              TextField(
                decoration: const InputDecoration(
                  labelText: 'Dias de visita',
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
