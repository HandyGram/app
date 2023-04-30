part of '../tdapi.dart';

/// **CancelPreliminaryUploadFile** *(cancelPreliminaryUploadFile)* - TDLib function
  ///
  /// Stops the preliminary uploading of a file. Supported only for files uploaded by using preliminaryUploadFile. For other files the behavior is undefined.
  ///
  /// * [fileId]: Identifier of the file to stop uploading.
  ///
  /// [Ok] is returned on completion.
class CancelPreliminaryUploadFile extends TdFunction {
  
  /// **CancelPreliminaryUploadFile** *(cancelPreliminaryUploadFile)* - TDLib function
  ///
  /// Stops the preliminary uploading of a file. Supported only for files uploaded by using preliminaryUploadFile. For other files the behavior is undefined.
  ///
  /// * [fileId]: Identifier of the file to stop uploading.
  ///
  /// [Ok] is returned on completion.
  const CancelPreliminaryUploadFile({
    required this.fileId,
  });
  
  /// Identifier of the file to stop uploading
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  CancelPreliminaryUploadFile copyWith({
    int? fileId,
  }) => CancelPreliminaryUploadFile(
    fileId: fileId ?? this.fileId,
  );

  static const String constructor = 'cancelPreliminaryUploadFile';
  
  @override
  String getConstructor() => constructor;
}
