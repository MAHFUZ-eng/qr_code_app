import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const QRCodeGeneratorScreen(),
    );
  }
}

class QRCodeGeneratorScreen extends StatefulWidget {
  const QRCodeGeneratorScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeGeneratorScreen> createState() => _QRCodeGeneratorScreenState();
}

class _QRCodeGeneratorScreenState extends State<QRCodeGeneratorScreen> {
  final TextEditingController _controller = TextEditingController();
  String _qrData = 'https://flutter.dev';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _generateQR() {
    if (_controller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter some text')),
      );
      return;
    }
    setState(() {
      _qrData = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: QrImageView(
                  data: _qrData,
                  version: QrVersions.auto,
                  size: 300.0,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter text or URL',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.text_fields),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _generateQR,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Generate QR Code',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}