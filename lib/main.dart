import 'package:flutter/material.dart';
import 'package:adria_kyc_integration/adria_kyc_integration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AdriaKycIntegration kyc = AdriaKycIntegration();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Scan',
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo Scan Plugin')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final result = await kyc.scanOldCin();
                  print("Résultat ancienne CIN : $result");
                },
                child: const Text("Scan Ancienne CIN"),
              ),
              ElevatedButton(
                onPressed: () async {
                  final result = await kyc.scanNewCin();
                  print("Résultat nouvelle CIN : $result");
                },
                child: const Text("Scan Nouvelle CIN"),
              ),
              ElevatedButton(
                onPressed: () async {
                  final result = await kyc.faceRecognition();
                  print("Résultat reconnaissance faciale : $result");
                },
                child: const Text("Scan Visage"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
