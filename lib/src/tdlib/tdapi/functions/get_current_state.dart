part of '../tdapi.dart';

/// **GetCurrentState** *(getCurrentState)* - TDLib function
  ///
  /// Returns all updates needed to restore current TDLib state, i.e. all actual updateAuthorizationState/updateUser/updateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization.
  ///
  /// [Updates] is returned on completion.
class GetCurrentState extends TdFunction {
  
  /// **GetCurrentState** *(getCurrentState)* - TDLib function
  ///
  /// Returns all updates needed to restore current TDLib state, i.e. all actual updateAuthorizationState/updateUser/updateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization.
  ///
  /// [Updates] is returned on completion.
  const GetCurrentState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetCurrentState copyWith() => const GetCurrentState();

  static const String constructor = 'getCurrentState';
  
  @override
  String getConstructor() => constructor;
}
