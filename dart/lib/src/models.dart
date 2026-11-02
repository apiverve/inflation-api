/// Response models for the Inflation Rate API.

/// API Response wrapper.
class InflationResponse {
  final String status;
  final dynamic error;
  final InflationData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  InflationResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory InflationResponse.fromJson(Map<String, dynamic> json) => InflationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InflationData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Inflation Rate API.

class InflationData {
  String? country;
  String? countryName;
  num? year;
  num? inflationRate;
  num? cpiIndex;
  num? cpiBaseYear;
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
