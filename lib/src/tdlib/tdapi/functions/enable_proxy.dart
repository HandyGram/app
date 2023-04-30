part of '../tdapi.dart';

/// **EnableProxy** *(enableProxy)* - TDLib function
  ///
  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [Ok] is returned on completion.
class EnableProxy extends TdFunction {
  
  /// **EnableProxy** *(enableProxy)* - TDLib function
  ///
  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  ///
  /// [Ok] is returned on completion.
  const EnableProxy({
    required this.proxyId,
  });
  
  /// Proxy identifier
  final int proxyId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }
  
  EnableProxy copyWith({
    int? proxyId,
  }) => EnableProxy(
    proxyId: proxyId ?? this.proxyId,
  );

  static const String constructor = 'enableProxy';
  
  @override
  String getConstructor() => constructor;
}
