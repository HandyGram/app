part of '../tdapi.dart';

/// **ChatNearby** *(chatNearby)* - basic class
  ///
  /// Describes a chat located nearby.
  ///
  /// * [chatId]: Chat identifier.
  /// * [distance]: Distance to the chat location, in meters.
class ChatNearby extends TdObject {
  
  /// **ChatNearby** *(chatNearby)* - basic class
  ///
  /// Describes a chat located nearby.
  ///
  /// * [chatId]: Chat identifier.
  /// * [distance]: Distance to the chat location, in meters.
  const ChatNearby({
    required this.chatId,
    required this.distance,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Distance to the chat location, in meters
  final int distance;
  
  /// Parse from a json
  factory ChatNearby.fromJson(Map<String, dynamic> json) => ChatNearby(
    chatId: json['chat_id'],
    distance: json['distance'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "distance": distance,
    };
  }
  
  ChatNearby copyWith({
    int? chatId,
    int? distance,
  }) => ChatNearby(
    chatId: chatId ?? this.chatId,
    distance: distance ?? this.distance,
  );

  static const String constructor = 'chatNearby';
  
  @override
  String getConstructor() => constructor;
}
