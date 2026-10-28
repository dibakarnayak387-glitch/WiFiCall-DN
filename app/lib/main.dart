
import 'package:flutter/material.dart';

void main() {
  runApp(const WiFiCallApp());
}

class WiFiCallApp extends StatelessWidget {
  const WiFiCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WiFi Call DN',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF07111F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WiFi Call DN'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.wifi_calling_3,
                size: 100,
                color: Colors.cyanAccent,
              ),
              const SizedBox(height: 24),
              const Text(
                'Connect Beyond Distance',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Voice calling over Wi-Fi and internet',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              FilledButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Calling feature will be added next.',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.call),
                label: const Text('Start Calling'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
