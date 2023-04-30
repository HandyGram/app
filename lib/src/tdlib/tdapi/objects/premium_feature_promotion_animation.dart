part of '../tdapi.dart';

/// **PremiumFeaturePromotionAnimation** *(premiumFeaturePromotionAnimation)* - basic class
  ///
  /// Describes a promotion animation for a Premium feature.
  ///
  /// * [feature]: Premium feature.
  /// * [animation]: Promotion animation for the feature.
class PremiumFeaturePromotionAnimation extends TdObject {
  
  /// **PremiumFeaturePromotionAnimation** *(premiumFeaturePromotionAnimation)* - basic class
  ///
  /// Describes a promotion animation for a Premium feature.
  ///
  /// * [feature]: Premium feature.
  /// * [animation]: Promotion animation for the feature.
  const PremiumFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });
  
  /// Premium feature 
  final PremiumFeature feature;

  /// Promotion animation for the feature
  final Animation animation;
  
  /// Parse from a json
  factory PremiumFeaturePromotionAnimation.fromJson(Map<String, dynamic> json) => PremiumFeaturePromotionAnimation(
    feature: PremiumFeature.fromJson(json['feature']),
    animation: Animation.fromJson(json['animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "feature": feature.toJson(),
      "animation": animation.toJson(),
    };
  }
  
  PremiumFeaturePromotionAnimation copyWith({
    PremiumFeature? feature,
    Animation? animation,
  }) => PremiumFeaturePromotionAnimation(
    feature: feature ?? this.feature,
    animation: animation ?? this.animation,
  );

  static const String constructor = 'premiumFeaturePromotionAnimation';
  
  @override
  String getConstructor() => constructor;
}
