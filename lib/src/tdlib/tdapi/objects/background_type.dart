part of '../tdapi.dart';

/// **BackgroundType** *(backgroundType)* - parent
  ///
  /// Describes the type of a background.
class BackgroundType extends TdObject {
  
  /// **BackgroundType** *(backgroundType)* - parent
  ///
  /// Describes the type of a background.
  const BackgroundType();
  
  /// a BackgroundType return type can be :
  /// * [BackgroundTypeWallpaper]
  /// * [BackgroundTypePattern]
  /// * [BackgroundTypeFill]
  factory BackgroundType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundTypeWallpaper.constructor:
        return BackgroundTypeWallpaper.fromJson(json);
      case BackgroundTypePattern.constructor:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeFill.constructor:
        return BackgroundTypeFill.fromJson(json);
      default:
        return const BackgroundType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BackgroundType copyWith() => const BackgroundType();

  static const String constructor = 'backgroundType';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundTypeWallpaper** *(backgroundTypeWallpaper)* - child of BackgroundType
  ///
  /// A wallpaper in JPEG format.
  ///
  /// * [isBlurred]: True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12.
  /// * [isMoving]: True, if the background needs to be slightly moved when device is tilted.
class BackgroundTypeWallpaper extends BackgroundType {
  
  /// **BackgroundTypeWallpaper** *(backgroundTypeWallpaper)* - child of BackgroundType
  ///
  /// A wallpaper in JPEG format.
  ///
  /// * [isBlurred]: True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12.
  /// * [isMoving]: True, if the background needs to be slightly moved when device is tilted.
  const BackgroundTypeWallpaper({
    required this.isBlurred,
    required this.isMoving,
  });
  
  /// True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12
  final bool isBlurred;

  /// True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;
  
  /// Parse from a json
  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) => BackgroundTypeWallpaper(
    isBlurred: json['is_blurred'],
    isMoving: json['is_moving'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "is_blurred": isBlurred,
      "is_moving": isMoving,
    };
  }
  
  @override
  BackgroundTypeWallpaper copyWith({
    bool? isBlurred,
    bool? isMoving,
  }) => BackgroundTypeWallpaper(
    isBlurred: isBlurred ?? this.isBlurred,
    isMoving: isMoving ?? this.isMoving,
  );

  static const String constructor = 'backgroundTypeWallpaper';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundTypePattern** *(backgroundTypePattern)* - child of BackgroundType
  ///
  /// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user.
  ///
  /// * [fill]: Fill of the background.
  /// * [intensity]: Intensity of the pattern when it is shown above the filled background; 0-100.
  /// * [isInverted]: True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only.
  /// * [isMoving]: True, if the background needs to be slightly moved when device is tilted.
class BackgroundTypePattern extends BackgroundType {
  
  /// **BackgroundTypePattern** *(backgroundTypePattern)* - child of BackgroundType
  ///
  /// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user.
  ///
  /// * [fill]: Fill of the background.
  /// * [intensity]: Intensity of the pattern when it is shown above the filled background; 0-100.
  /// * [isInverted]: True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only.
  /// * [isMoving]: True, if the background needs to be slightly moved when device is tilted.
  const BackgroundTypePattern({
    required this.fill,
    required this.intensity,
    required this.isInverted,
    required this.isMoving,
  });
  
  /// Fill of the background
  final BackgroundFill fill;

  /// Intensity of the pattern when it is shown above the filled background; 0-100.
  final int intensity;

  /// True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only
  final bool isInverted;

  /// True, if the background needs to be slightly moved when device is tilted
  final bool isMoving;
  
  /// Parse from a json
  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) => BackgroundTypePattern(
    fill: BackgroundFill.fromJson(json['fill']),
    intensity: json['intensity'],
    isInverted: json['is_inverted'],
    isMoving: json['is_moving'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "fill": fill.toJson(),
      "intensity": intensity,
      "is_inverted": isInverted,
      "is_moving": isMoving,
    };
  }
  
  @override
  BackgroundTypePattern copyWith({
    BackgroundFill? fill,
    int? intensity,
    bool? isInverted,
    bool? isMoving,
  }) => BackgroundTypePattern(
    fill: fill ?? this.fill,
    intensity: intensity ?? this.intensity,
    isInverted: isInverted ?? this.isInverted,
    isMoving: isMoving ?? this.isMoving,
  );

  static const String constructor = 'backgroundTypePattern';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundTypeFill** *(backgroundTypeFill)* - child of BackgroundType
  ///
  /// A filled background.
  ///
  /// * [fill]: The background fill.
class BackgroundTypeFill extends BackgroundType {
  
  /// **BackgroundTypeFill** *(backgroundTypeFill)* - child of BackgroundType
  ///
  /// A filled background.
  ///
  /// * [fill]: The background fill.
  const BackgroundTypeFill({
    required this.fill,
  });
  
  /// The background fill
  final BackgroundFill fill;
  
  /// Parse from a json
  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) => BackgroundTypeFill(
    fill: BackgroundFill.fromJson(json['fill']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "fill": fill.toJson(),
    };
  }
  
  @override
  BackgroundTypeFill copyWith({
    BackgroundFill? fill,
  }) => BackgroundTypeFill(
    fill: fill ?? this.fill,
  );

  static const String constructor = 'backgroundTypeFill';
  
  @override
  String getConstructor() => constructor;
}
