// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentalFeeSumStruct extends BaseStruct {
  RentalFeeSumStruct({
    List<RentalFeeLineStruct>? rentalFeeLines,
    int? rentalFeeTotal,
  })  : _rentalFeeLines = rentalFeeLines,
        _rentalFeeTotal = rentalFeeTotal;

  // "rentalFeeLines" field.
  List<RentalFeeLineStruct>? _rentalFeeLines;
  List<RentalFeeLineStruct> get rentalFeeLines => _rentalFeeLines ?? const [];
  set rentalFeeLines(List<RentalFeeLineStruct>? val) => _rentalFeeLines = val;
  void updateRentalFeeLines(Function(List<RentalFeeLineStruct>) updateFn) =>
      updateFn(_rentalFeeLines ??= []);
  bool hasRentalFeeLines() => _rentalFeeLines != null;

  // "rentalFeeTotal" field.
  int? _rentalFeeTotal;
  int get rentalFeeTotal => _rentalFeeTotal ?? 0;
  set rentalFeeTotal(int? val) => _rentalFeeTotal = val;
  void incrementRentalFeeTotal(int amount) =>
      _rentalFeeTotal = rentalFeeTotal + amount;
  bool hasRentalFeeTotal() => _rentalFeeTotal != null;

  static RentalFeeSumStruct fromMap(Map<String, dynamic> data) =>
      RentalFeeSumStruct(
        rentalFeeLines: getStructList(
          data['rentalFeeLines'],
          RentalFeeLineStruct.fromMap,
        ),
        rentalFeeTotal: castToType<int>(data['rentalFeeTotal']),
      );

  static RentalFeeSumStruct? maybeFromMap(dynamic data) => data is Map
      ? RentalFeeSumStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'rentalFeeLines': _rentalFeeLines?.map((e) => e.toMap()).toList(),
        'rentalFeeTotal': _rentalFeeTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rentalFeeLines': serializeParam(
          _rentalFeeLines,
          ParamType.DataStruct,
          true,
        ),
        'rentalFeeTotal': serializeParam(
          _rentalFeeTotal,
          ParamType.int,
        ),
      }.withoutNulls;

  static RentalFeeSumStruct fromSerializableMap(Map<String, dynamic> data) =>
      RentalFeeSumStruct(
        rentalFeeLines: deserializeStructParam<RentalFeeLineStruct>(
          data['rentalFeeLines'],
          ParamType.DataStruct,
          true,
          structBuilder: RentalFeeLineStruct.fromSerializableMap,
        ),
        rentalFeeTotal: deserializeParam(
          data['rentalFeeTotal'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RentalFeeSumStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RentalFeeSumStruct &&
        listEquality.equals(rentalFeeLines, other.rentalFeeLines) &&
        rentalFeeTotal == other.rentalFeeTotal;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([rentalFeeLines, rentalFeeTotal]);
}

RentalFeeSumStruct createRentalFeeSumStruct({
  int? rentalFeeTotal,
}) =>
    RentalFeeSumStruct(
      rentalFeeTotal: rentalFeeTotal,
    );
