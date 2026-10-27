Pod::Spec.new do |s|
  s.name             = 'APIVerveInflationRate'
  s.version          = '1.2.3'
  s.summary          = 'Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code.'
  s.description      = <<-'DESC'
Inflation Rate reports annual inflation rates and Consumer Price Index (CPI) values for any country by two-letter country code. Outputs include the year-over-year price change percentage, CPI index, and base comparison year, with paid plans supporting historical lookups by year.

This iOS/macOS SDK provides a convenient way to access the Inflation Rate from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/inflation?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/inflation-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveInflationRate/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
