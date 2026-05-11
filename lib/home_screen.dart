import 'package:flutter/material.dart';
import 'converter_screen.dart';
import 'qr_generator_screen.dart';
import 'qr_scanner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Toolkit')),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          _buildCard(context, 'Converter', Icons.calculate, const ConverterScreen()),
          _buildCard(context, 'Scan QR', Icons.qr_code_scanner, const QrScannerScreen()),
          _buildCard(context, 'Generate QR', Icons.qr_code, const QrGeneratorScreen()),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, IconData icon, Widget screen) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.deepPurple),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
