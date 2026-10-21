# Inflation Rate API - Ruby Gem

Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code. Outputs include the year-over-year price change percentage, CPI index, and base comparison year, with paid plans supporting historical lookups by year.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_inflation'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_inflation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_inflation'

# Initialize the client
client = APIVerve::Inflation::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  country: "US",
  year: 2023
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "US", year: 2023 })
  puts response["data"]
rescue APIVerve::Inflation::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Inflation::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Inflation::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/inflation?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/inflation?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/inflation?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
