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

  // "rental_fee_lines" field.
  List<RentalFeeLineStruct>? _rentalFeeLines;
  List<RentalFeeLineStruct> get rentalFeeLines => _rentalFeeLines ?? const [];
  set rentalFeeLines(List<RentalFeeLineStruct>? val) => _rentalFeeLines = val;
  void updateRentalFeeLines(Function(List<RentalFeeLineStruct>) updateFn) =>
      updateFn(_rentalFeeLines ??= []);
  bool hasRentalFeeLines() => _rentalFeeLines != null;

  // "rental_fee_total" field.
  int? _rentalFeeTotal;
  int get rentalFeeTotal => _rentalFeeTotal ?? 0;
  set rentalFeeTotal(int? val) => _rentalFeeTotal = val;
  void incrementRentalFeeTotal(int amount) =>
      _rentalFeeTotal = rentalFeeTotal + amount;
  bool hasRentalFeeTotal() => _rentalFeeTotal != null;

  static RentalFeeSumStruct fromMap(Map<String, dynamic> data) =>
      RentalFeeSumStruct(
        rentalFeeLines: getStructList(
          data['rental_fee_lines'],
          RentalFeeLineStruct.fromMap,
        ),
        rentalFeeTotal: castToType<int>(data['rental_fee_total']),
      );

  static RentalFeeSumStruct? maybeFromMap(dynamic data) => data is Map
      ? RentalFeeSumStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'rental_fee_lines': _rentalFeeLines?.map((e) => e.toMap()).toList(),
        'rental_fee_total': _rentalFeeTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rental_fee_lines': serializeParam(
          _rentalFeeLines,
          ParamType.DataStruct,
          true,
        ),
        'rental_fee_total': serializeParam(
          _rentalFeeTotal,
          ParamType.int,
        ),
      }.withoutNulls;

  static RentalFeeSumStruct fromSerializableMap(Map<String, dynamic> data) =>
      RentalFeeSumStruct(
        rentalFeeLines: deserializeStructParam<RentalFeeLineStruct>(
          data['rental_fee_lines'],
          ParamType.DataStruct,
          true,
          structBuilder: RentalFeeLineStruct.fromSerializableMap,
        ),
        rentalFeeTotal: deserializeParam(
          data['rental_fee_total'],
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
