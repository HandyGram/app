part of '../tdapi.dart';

/// **TestSquareInt** *(testSquareInt)* - TDLib function
  ///
  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Number to square.
  ///
  /// [TestInt] is returned on completion.
class TestSquareInt extends TdFunction {
  
  /// **TestSquareInt** *(testSquareInt)* - TDLib function
  ///
  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Number to square.
  ///
  /// [TestInt] is returned on completion.
  const TestSquareInt({
    required this.x,
  });
  
  /// Number to square
  final int x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x,
      "@extra": extra,
    };
  }
  
  TestSquareInt copyWith({
    int? x,
  }) => TestSquareInt(
    x: x ?? this.x,
  );

  static const String constructor = 'testSquareInt';
  
  @override
  String getConstructor() => constructor;
}
