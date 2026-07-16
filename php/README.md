# Inflation Rate API - PHP Package

Inflation Rate is a tool for retrieving annual inflation rate and CPI data for countries worldwide. It returns the inflation rate, CPI index value, and country details for any year going back to 1960.

## Installation

Install via Composer:

```bash
composer require apiverve/inflation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Inflation\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'country' => 'US',
    'year' => 2023
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Inflation\Client;
use APIVerve\Inflation\Exceptions\APIException;
use APIVerve\Inflation\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'US', 'year' => 2023]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/inflation?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/inflation?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/inflation?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
