// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageUploadResultStruct extends BaseStruct {
  ImageUploadResultStruct({
    bool? success,
    String? url,
    String? error,
  })  : _success = success,
        _url = url,
        _error = error;

  // "success" field.
  bool? _success;
  bool get success => _success ?? true;
  set success(bool? val) => _success = val;
  bool hasSuccess() => _success != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;
  bool hasError() => _error != null;

  static ImageUploadResultStruct fromMap(Map<String, dynamic> data) =>
      ImageUploadResultStruct(
        success: data['success'] as bool?,
        url: data['url'] as String?,
        error: data['error'] as String?,
      );

  static ImageUploadResultStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageUploadResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'url': _url,
        'error': _error,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageUploadResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ImageUploadResultStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageUploadResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageUploadResultStruct &&
        success == other.success &&
        url == other.url &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([success, url, error]);
}

ImageUploadResultStruct createImageUploadResultStruct({
  bool? success,
  String? url,
  String? error,
}) =>
    ImageUploadResultStruct(
      success: success,
      url: url,
      error: error,
    );
