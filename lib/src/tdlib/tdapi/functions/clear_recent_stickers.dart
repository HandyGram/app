part of '../tdapi.dart';

/// **ClearRecentStickers** *(clearRecentStickers)* - TDLib function
  ///
  /// Clears the list of recently used stickers.
  ///
  /// * [isAttached]: Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers.
  ///
  /// [Ok] is returned on completion.
class ClearRecentStickers extends TdFunction {
  
  /// **ClearRecentStickers** *(clearRecentStickers)* - TDLib function
  ///
  /// Clears the list of recently used stickers.
  ///
  /// * [isAttached]: Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentStickers({
    required this.isAttached,
  });
  
  /// Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
  final bool isAttached;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "is_attached": isAttached,
      "@extra": extra,
    };
  }
  
  ClearRecentStickers copyWith({
    bool? isAttached,
  }) => ClearRecentStickers(
    isAttached: isAttached ?? this.isAttached,
  );

  static const String constructor = 'clearRecentStickers';
  
  @override
  String getConstructor() => constructor;
}
