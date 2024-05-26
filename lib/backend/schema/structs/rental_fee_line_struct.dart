// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentalFeeLineStruct extends BaseStruct {
  RentalFeeLineStruct({
    String? functionSpaceName,
    int? rentalFee,
  })  : _functionSpaceName = functionSpaceName,
        _rentalFee = rentalFee;

  // "functionSpaceName" field.
  String? _functionSpaceName;
  String get functionSpaceName => _functionSpaceName ?? '';
  set functionSpaceName(String? val) => _functionSpaceName = val;
  bool hasFunctionSpaceName() => _functionSpaceName != null;

  // "rentalFee" field.
  int? _rentalFee;
  int get rentalFee => _rentalFee ?? 0;
  set rentalFee(int? val) => _rentalFee = val;
  void incrementRentalFee(int amount) => _rentalFee = rentalFee + amount;
  bool hasRentalFee() => _rentalFee != null;

  static RentalFeeLineStruct fromMap(Map<String, dynamic> data) =>
      RentalFeeLineStruct(
        functionSpaceName: data['functionSpaceName'] as String?,
        rentalFee: castToType<int>(data['rentalFee']),
      );

  static RentalFeeLineStruct? maybeFromMap(dynamic data) => data is Map
      ? RentalFeeLineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'functionSpaceName': _functionSpaceName,
        'rentalFee': _rentalFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'functionSpaceName': serializeParam(
          _functionSpaceName,
          ParamType.String,
        ),
        'rentalFee': serializeParam(
          _rentalFee,
          ParamType.int,
        ),
      }.withoutNulls;

  static RentalFeeLineStruct fromSerializableMap(Map<String, dynamic> data) =>
      RentalFeeLineStruct(
        functionSpaceName: deserializeParam(
          data['functionSpaceName'],
          ParamType.String,
          false,
        ),
        rentalFee: deserializeParam(
          data['rentalFee'],
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
        rentalFee == other.rentalFee;
  }

  @override
  int get hashCode => const ListEquality().hash([functionSpaceName, rentalFee]);
}

RentalFeeLineStruct createRentalFeeLineStruct({
  String? functionSpaceName,
  int? rentalFee,
}) =>
    RentalFeeLineStruct(
      functionSpaceName: functionSpaceName,
      rentalFee: rentalFee,
    );
