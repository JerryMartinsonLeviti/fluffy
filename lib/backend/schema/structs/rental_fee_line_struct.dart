// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentalFeeLineStruct extends BaseStruct {
  RentalFeeLineStruct({
    String? functionSpaceName,
    int? rentallFee,
  })  : _functionSpaceName = functionSpaceName,
        _rentallFee = rentallFee;

  // "function_space_name" field.
  String? _functionSpaceName;
  String get functionSpaceName => _functionSpaceName ?? '';
  set functionSpaceName(String? val) => _functionSpaceName = val;
  bool hasFunctionSpaceName() => _functionSpaceName != null;

  // "rentall_fee" field.
  int? _rentallFee;
  int get rentallFee => _rentallFee ?? 0;
  set rentallFee(int? val) => _rentallFee = val;
  void incrementRentallFee(int amount) => _rentallFee = rentallFee + amount;
  bool hasRentallFee() => _rentallFee != null;

  static RentalFeeLineStruct fromMap(Map<String, dynamic> data) =>
      RentalFeeLineStruct(
        functionSpaceName: data['function_space_name'] as String?,
        rentallFee: castToType<int>(data['rentall_fee']),
      );

  static RentalFeeLineStruct? maybeFromMap(dynamic data) => data is Map
      ? RentalFeeLineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'function_space_name': _functionSpaceName,
        'rentall_fee': _rentallFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'function_space_name': serializeParam(
          _functionSpaceName,
          ParamType.String,
        ),
        'rentall_fee': serializeParam(
          _rentallFee,
          ParamType.int,
        ),
      }.withoutNulls;

  static RentalFeeLineStruct fromSerializableMap(Map<String, dynamic> data) =>
      RentalFeeLineStruct(
        functionSpaceName: deserializeParam(
          data['function_space_name'],
          ParamType.String,
          false,
        ),
        rentallFee: deserializeParam(
          data['rentall_fee'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RentalFeeLineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RentalFeeLineStruct &&
        functionSpaceName == other.functionSpaceName &&
        rentallFee == other.rentallFee;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([functionSpaceName, rentallFee]);
}

RentalFeeLineStruct createRentalFeeLineStruct({
  String? functionSpaceName,
  int? rentallFee,
}) =>
    RentalFeeLineStruct(
      functionSpaceName: functionSpaceName,
      rentallFee: rentallFee,
    );
