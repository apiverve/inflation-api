/// Inflation Rate API client for Dart/Flutter
///
/// Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code. Outputs include the year-over-year price change percentage, CPI index, and base comparison year, with paid plans supporting historical lookups by year. On paid plans, changes=true adds the prior year's rate and the change from it, plus the 5-year average, high, low and cumulative CPI rise.
///
/// For more information, visit: https://apiverve.com/marketplace/inflation?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_inflation;

export 'src/client.dart';
export 'src/models.dart';
