import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(const BMICalculatorApp());

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const BMICalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double _height = 170;
  double _weight = 65;
  double? _bmi;

  String getBMICategory(double bmi) {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 24.9) return 'Normal';
    if (bmi < 29.9) return 'Overweight';
    return 'Obese';
  }

  void _calculateBMI() {
    final heightMeters = _height / 100;
    final bmi = _weight / pow(heightMeters, 2);
    setState(() => _bmi = bmi);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Height: ${_height.toStringAsFixed(1)} cm"),
            Slider(
              value: _height,
              min: 100,
              max: 220,
              divisions: 120,
              label: "${_height.toStringAsFixed(1)}",
              onChanged: (val) => setState(() => _height = val),
            ),
            const SizedBox(height: 20),
            Text("Weight: ${_weight.toStringAsFixed(1)} kg"),
            Slider(
              value: _weight,
              min: 30,
              max: 150,
              divisions: 120,
              label: "${_weight.toStringAsFixed(1)}",
              onChanged: (val) => setState(() => _weight = val),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: const Text("Calculate BMI"),
            ),
            const SizedBox(height: 20),
            if (_bmi != null) ...[
              Text("Your BMI is: ${_bmi!.toStringAsFixed(1)}",
                  style: const TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
              Text(getBMICategory(_bmi!),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ]
          ],
        ),
      ),
    );
  }
}


Future<Map<String, dynamic>> fetchBMI(double height, double weight) async {
  final url = Uri.parse('http://127.0.0.1:5000/bmi');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'height': height, 'weight': weight}),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to calculate BMI');
  }
}