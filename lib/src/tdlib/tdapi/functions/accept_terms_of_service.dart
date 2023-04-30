part of '../tdapi.dart';

/// **AcceptTermsOfService** *(acceptTermsOfService)* - TDLib function
  ///
  /// Accepts Telegram terms of services.
  ///
  /// * [termsOfServiceId]: Terms of service identifier.
  ///
  /// [Ok] is returned on completion.
class AcceptTermsOfService extends TdFunction {
  
  /// **AcceptTermsOfService** *(acceptTermsOfService)* - TDLib function
  ///
  /// Accepts Telegram terms of services.
  ///
  /// * [termsOfServiceId]: Terms of service identifier.
  ///
  /// [Ok] is returned on completion.
  const AcceptTermsOfService({
    required this.termsOfServiceId,
  });
  
  /// Terms of service identifier
  final String termsOfServiceId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "terms_of_service_id": termsOfServiceId,
      "@extra": extra,
    };
  }
  
  AcceptTermsOfService copyWith({
    String? termsOfServiceId,
  }) => AcceptTermsOfService(
    termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
  );

  static const String constructor = 'acceptTermsOfService';
  
  @override
  String getConstructor() => constructor;
}
