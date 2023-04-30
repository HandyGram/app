part of '../tdapi.dart';

/// **SetChatClientData** *(setChatClientData)* - TDLib function
  ///
  /// Changes application-specific data associated with a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [clientData]: New value of client_data.
  ///
  /// [Ok] is returned on completion.
class SetChatClientData extends TdFunction {
  
  /// **SetChatClientData** *(setChatClientData)* - TDLib function
  ///
  /// Changes application-specific data associated with a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [clientData]: New value of client_data.
  ///
  /// [Ok] is returned on completion.
  const SetChatClientData({
    required this.chatId,
    required this.clientData,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of client_data
  final String clientData;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "client_data": clientData,
      "@extra": extra,
    };
  }
  
  SetChatClientData copyWith({
    int? chatId,
    String? clientData,
  }) => SetChatClientData(
    chatId: chatId ?? this.chatId,
    clientData: clientData ?? this.clientData,
  );

  static const String constructor = 'setChatClientData';
  
  @override
  String getConstructor() => constructor;
}
