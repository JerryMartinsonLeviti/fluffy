// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FnbItemLineStruct extends BaseStruct {
  FnbItemLineStruct({
    String? fsName,
    int? fsPrice,
  })  : _fsName = fsName,
        _fsPrice = fsPrice;

  // "fsName" field.
  String? _fsName;
  String get fsName => _fsName ?? '';
  set fsName(String? val) => _fsName = val;
  bool hasFsName() => _fsName != null;

  // "fsPrice" field.
  int? _fsPrice;
  int get fsPrice => _fsPrice ?? 0;
  set fsPrice(int? val) => _fsPrice = val;
  void incrementFsPrice(int amount) => _fsPrice = fsPrice + amount;
  bool hasFsPrice() => _fsPrice != null;

  static FnbItemLineStruct fromMap(Map<String, dynamic> data) =>
      FnbItemLineStruct(
        fsName: data['fsName'] as String?,
        fsPrice: castToType<int>(data['fsPrice']),
      );

  static FnbItemLineStruct? maybeFromMap(dynamic data) => data is Map
      ? FnbItemLineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fsName': _fsName,
        'fsPrice': _fsPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fsName': serializeParam(
          _fsName,
          ParamType.String,
        ),
        'fsPrice': serializeParam(
          _fsPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static FnbItemLineStruct fromSerializableMap(Map<String, dynamic> data) =>
      FnbItemLineStruct(
        fsName: deserializeParam(
          data['fsName'],
          ParamType.String,
          false,
        ),
        fsPrice: deserializeParam(
          data['fsPrice'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FnbItemLineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FnbItemLineStruct &&
        fsName == other.fsName &&
        fsPrice == other.fsPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([fsName, fsPrice]);
}

FnbItemLineStruct createFnbItemLineStruct({
  String? fsName,
  int? fsPrice,
}) =>
    FnbItemLineStruct(
      fsName: fsName,
      fsPrice: fsPrice,
    );
