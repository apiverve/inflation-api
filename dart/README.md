# Inflation Rate API - Dart/Flutter Client

Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code. Outputs include the year-over-year price change percentage, CPI index, and base comparison year, with paid plans supporting historical lookups by year. On paid plans, changes=true adds the prior year's rate and the change from it, plus the 5-year average, high, low and cumulative CPI rise.

[![pub package](https://img.shields.io/pub/v/apiverve_inflation.svg)](https://pub.dev/packages/apiverve_inflation)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Inflation Rate API](https://apiverve.com/marketplace/inflation?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_inflation: ^1.2.5
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
      'year': 2023,
      'changes': true
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
    "cpiIndex": 139.74,
    "cpiBaseYear": 2010,
    "lastUpdated": "2026-11-06T04:00:00.000Z",
    "previousYear": 2022,
    "previousInflationRate": 8,
    "inflationRateChange": -3.88,
    "changeDirection": "down",
    "averageInflationRate5y": 3.97,
    "highInflationRate5y": 8,
    "lowInflationRate5y": 1.23,
    "cpiChange5y": 21.34
  }
}
```

## API Reference

- **API Home:** [Inflation Rate API](https://apiverve.com/marketplace/inflation?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/inflation](https://docs.apiverve.com/ref/inflation?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
