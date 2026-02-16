# Inflation Rate API - Dart/Flutter Client

Inflation Rate is a tool for retrieving annual inflation rate and CPI data for countries worldwide. It returns the inflation rate, CPI index value, and country details for any year going back to 1960.

[![pub package](https://img.shields.io/pub/v/apiverve_inflation.svg)](https://pub.dev/packages/apiverve_inflation)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Inflation Rate API](https://apiverve.com/marketplace/inflation?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_inflation: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_inflation/apiverve_inflation.dart';

void main() async {
  final client = InflationClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'country': 'US',
      'year': 2023
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "US",
    "countryName": "United States",
    "year": 2023,
    "inflationRate": 4.12,
    "cpiIndex": 139.81,
    "cpiBaseYear": 2010,
    "lastUpdated": "2026-02-05T04:00:00.000Z"
  }
}
```

## API Reference

- **API Home:** [Inflation Rate API](https://apiverve.com/marketplace/inflation?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/inflation](https://docs.apiverve.com/ref/inflation?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
