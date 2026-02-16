/// Response models for the Inflation Rate API.

/// API Response wrapper.
class InflationResponse {
  final String status;
  final dynamic error;
  final InflationData? data;

  InflationResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory InflationResponse.fromJson(Map<String, dynamic> json) => InflationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InflationData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Inflation Rate API.

class InflationData {
  String? country;
  String? countryName;
  int? year;
  double? inflationRate;
  double? cpiIndex;
  int? cpiBaseYear;
  String? lastUpdated;

  InflationData({
    this.country,
    this.countryName,
    this.year,
    this.inflationRate,
    this.cpiIndex,
    this.cpiBaseYear,
    this.lastUpdated,
  });

  factory InflationData.fromJson(Map<String, dynamic> json) => InflationData(
      country: json['country'],
      countryName: json['countryName'],
      year: json['year'],
      inflationRate: json['inflationRate'],
      cpiIndex: json['cpiIndex'],
      cpiBaseYear: json['cpiBaseYear'],
      lastUpdated: json['lastUpdated'],
    );
}

class InflationRequest {
  String country;
  int? year;

  InflationRequest({
    required this.country,
    this.year,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
      if (year != null) 'year': year,
    };
}
