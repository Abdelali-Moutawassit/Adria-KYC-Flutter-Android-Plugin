# Adria KYC Flutter Android Plugin

Ce plugin Flutter permet d'intégrer des fonctionnalités de scan pour les applications Android. Il propose trois fonctionnalités principales :

- Scan de l'ancienne Carte d'Identité Nationale (CIN)
- Scan de la nouvelle Carte d'Identité Nationale (CIN)
- Reconnaissance faciale

## Installation

Ajoutez ceci dans le fichier `pubspec.yaml` de votre projet Flutter :

```yaml
adria_kyc_flutter_android:
  git:
    url: https://github.com/Abdelali-Moutawassit/adria_kyc_flutter_android.git
```

Puis lancez :

```bash
flutter pub get
```

## Utilisation

Importez la classe principale dans votre code Dart :

```dart
import 'package:adria_kyc_flutter_android/adria_kyc_integration.dart';
```

Créez une instance de la classe et appelez les méthodes souhaitées :

```dart
final kyc = AdriaKycIntegration();

// Scanner l'ancienne CIN
final oldCinData = await kyc.scanOldCin();

// Scanner la nouvelle CIN
final newCinData = await kyc.scanNewCin();

// Démarrer la reconnaissance faciale
final faceResult = await kyc.faceRecognition();
```

## Méthodes disponibles

| Méthode             | Description                                 |
|----------------------|---------------------------------------------|
| `scanOldCin()`       | Scanner l'ancienne carte CIN                |
| `scanNewCin()`       | Scanner la nouvelle carte CIN               |
| `faceRecognition()`  | Lancer la reconnaissance faciale            |

## Compatibilité
- Ce plugin est actuellement compatible uniquement avec **Android**.

## Contributions
Les contributions sont les bienvenues ! Pour proposer des modifications, ouvrez une pull request ou signalez un bug via les issues.

## Auteur
Abdelali Moutawassit
