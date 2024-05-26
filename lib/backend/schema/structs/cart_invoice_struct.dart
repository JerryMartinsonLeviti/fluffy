// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartInvoiceStruct extends BaseStruct {
  CartInvoiceStruct({
    PackageSummaryStruct? packages,
    FoodAndBevSummaryStruct? fnbMinimums,
    RentalFeeSumStruct? rentalFees,
    TaxesAndFeesSummaryStruct? taxesAndFees,
    int? subtotal,
    int? dueToday,
    int? total,
  })  : _packages = packages,
        _fnbMinimums = fnbMinimums,
        _rentalFees = rentalFees,
        _taxesAndFees = taxesAndFees,
        _subtotal = subtotal,
        _dueToday = dueToday,
        _total = total;

  // "packages" field.
  PackageSummaryStruct? _packages;
  PackageSummaryStruct get packages => _packages ?? PackageSummaryStruct();
  set packages(PackageSummaryStruct? val) => _packages = val;
  void updatePackages(Function(PackageSummaryStruct) updateFn) =>
      updateFn(_packages ??= PackageSummaryStruct());
  bool hasPackages() => _packages != null;

  // "fnbMinimums" field.
  FoodAndBevSummaryStruct? _fnbMinimums;
  FoodAndBevSummaryStruct get fnbMinimums =>
      _fnbMinimums ?? FoodAndBevSummaryStruct();
  set fnbMinimums(FoodAndBevSummaryStruct? val) => _fnbMinimums = val;
  void updateFnbMinimums(Function(FoodAndBevSummaryStruct) updateFn) =>
      updateFn(_fnbMinimums ??= FoodAndBevSummaryStruct());
  bool hasFnbMinimums() => _fnbMinimums != null;

  // "rentalFees" field.
  RentalFeeSumStruct? _rentalFees;
  RentalFeeSumStruct get rentalFees => _rentalFees ?? RentalFeeSumStruct();
  set rentalFees(RentalFeeSumStruct? val) => _rentalFees = val;
  void updateRentalFees(Function(RentalFeeSumStruct) updateFn) =>
      updateFn(_rentalFees ??= RentalFeeSumStruct());
  bool hasRentalFees() => _rentalFees != null;

  // "taxesAndFees" field.
  TaxesAndFeesSummaryStruct? _taxesAndFees;
  TaxesAndFeesSummaryStruct get taxesAndFees =>
      _taxesAndFees ?? TaxesAndFeesSummaryStruct();
  set taxesAndFees(TaxesAndFeesSummaryStruct? val) => _taxesAndFees = val;
  void updateTaxesAndFees(Function(TaxesAndFeesSummaryStruct) updateFn) =>
      updateFn(_taxesAndFees ??= TaxesAndFeesSummaryStruct());
  bool hasTaxesAndFees() => _taxesAndFees != null;

  // "subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  set subtotal(int? val) => _subtotal = val;
  void incrementSubtotal(int amount) => _subtotal = subtotal + amount;
  bool hasSubtotal() => _subtotal != null;

  // "dueToday" field.
  int? _dueToday;
  int get dueToday => _dueToday ?? 0;
  set dueToday(int? val) => _dueToday = val;
  void incrementDueToday(int amount) => _dueToday = dueToday + amount;
  bool hasDueToday() => _dueToday != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static CartInvoiceStruct fromMap(Map<String, dynamic> data) =>
      CartInvoiceStruct(
        packages: PackageSummaryStruct.maybeFromMap(data['packages']),
        fnbMinimums: FoodAndBevSummaryStruct.maybeFromMap(data['fnbMinimums']),
        rentalFees: RentalFeeSumStruct.maybeFromMap(data['rentalFees']),
        taxesAndFees:
            TaxesAndFeesSummaryStruct.maybeFromMap(data['taxesAndFees']),
        subtotal: castToType<int>(data['subtotal']),
        dueToday: castToType<int>(data['dueToday']),
        total: castToType<int>(data['total']),
      );

  static CartInvoiceStruct? maybeFromMap(dynamic data) => data is Map
      ? CartInvoiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'packages': _packages?.toMap(),
        'fnbMinimums': _fnbMinimums?.toMap(),
        'rentalFees': _rentalFees?.toMap(),
        'taxesAndFees': _taxesAndFees?.toMap(),
        'subtotal': _subtotal,
        'dueToday': _dueToday,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'packages': serializeParam(
          _packages,
          ParamType.DataStruct,
        ),
        'fnbMinimums': serializeParam(
          _fnbMinimums,
          ParamType.DataStruct,
        ),
        'rentalFees': serializeParam(
          _rentalFees,
          ParamType.DataStruct,
        ),
        'taxesAndFees': serializeParam(
          _taxesAndFees,
          ParamType.DataStruct,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.int,
        ),
        'dueToday': serializeParam(
          _dueToday,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartInvoiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartInvoiceStruct(
        packages: deserializeStructParam(
          data['packages'],
          ParamType.DataStruct,
          false,
          structBuilder: PackageSummaryStruct.fromSerializableMap,
        ),
        fnbMinimums: deserializeStructParam(
          data['fnbMinimums'],
          ParamType.DataStruct,
          false,
          structBuilder: FoodAndBevSummaryStruct.fromSerializableMap,
        ),
        rentalFees: deserializeStructParam(
          data['rentalFees'],
          ParamType.DataStruct,
          false,
          structBuilder: RentalFeeSumStruct.fromSerializableMap,
        ),
        taxesAndFees: deserializeStructParam(
          data['taxesAndFees'],
          ParamType.DataStruct,
          false,
          structBuilder: TaxesAndFeesSummaryStruct.fromSerializableMap,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.int,
          false,
        ),
        dueToday: deserializeParam(
          data['dueToday'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartInvoiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartInvoiceStruct &&
        packages == other.packages &&
        fnbMinimums == other.fnbMinimums &&
        rentalFees == other.rentalFees &&
        taxesAndFees == other.taxesAndFees &&
        subtotal == other.subtotal &&
        dueToday == other.dueToday &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([
        packages,
        fnbMinimums,
        rentalFees,
        taxesAndFees,
        subtotal,
        dueToday,
        total
      ]);
}

CartInvoiceStruct createCartInvoiceStruct({
  PackageSummaryStruct? packages,
  FoodAndBevSummaryStruct? fnbMinimums,
  RentalFeeSumStruct? rentalFees,
  TaxesAndFeesSummaryStruct? taxesAndFees,
  int? subtotal,
  int? dueToday,
  int? total,
}) =>
    CartInvoiceStruct(
      packages: packages ?? PackageSummaryStruct(),
      fnbMinimums: fnbMinimums ?? FoodAndBevSummaryStruct(),
      rentalFees: rentalFees ?? RentalFeeSumStruct(),
      taxesAndFees: taxesAndFees ?? TaxesAndFeesSummaryStruct(),
      subtotal: subtotal,
      dueToday: dueToday,
      total: total,
    );
