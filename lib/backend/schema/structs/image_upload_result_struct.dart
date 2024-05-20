// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageUploadResultStruct extends BaseStruct {
  ImageUploadResultStruct({
    bool? succss,
    String? url,
    String? error,
  })  : _succss = succss,
        _url = url,
        _error = error;

  // "succss" field.
  bool? _succss;
  bool get succss => _succss ?? true;
  set succss(bool? val) => _succss = val;
  bool hasSuccss() => _succss != null;

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
        succss: data['succss'] as bool?,
        url: data['url'] as String?,
        error: data['error'] as String?,
      );

  static ImageUploadResultStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageUploadResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'succss': _succss,
        'url': _url,
        'error': _error,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'succss': serializeParam(
          _succss,
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
        succss: deserializeParam(
          data['succss'],
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
        succss == other.succss &&
        url == other.url &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([succss, url, error]);
}

ImageUploadResultStruct createImageUploadResultStruct({
  bool? succss,
  String? url,
  String? error,
}) =>
    ImageUploadResultStruct(
      succss: succss,
      url: url,
      error: error,
    );
