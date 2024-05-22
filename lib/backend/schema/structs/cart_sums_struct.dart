// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartSumsStruct extends BaseStruct {
  CartSumsStruct({
    int? cartPK,
    List<int>? foodAndBeverageMinimums,
    List<int>? rentalFees,
    int? numGuests,
    int? minutes,
    List<int>? foodPackages,
  })  : _cartPK = cartPK,
        _foodAndBeverageMinimums = foodAndBeverageMinimums,
        _rentalFees = rentalFees,
        _numGuests = numGuests,
        _minutes = minutes,
        _foodPackages = foodPackages;

  // "cartPK" field.
  int? _cartPK;
  int get cartPK => _cartPK ?? 0;
  set cartPK(int? val) => _cartPK = val;
  void incrementCartPK(int amount) => _cartPK = cartPK + amount;
  bool hasCartPK() => _cartPK != null;

  // "food_and_beverage_minimums" field.
  List<int>? _foodAndBeverageMinimums;
  List<int> get foodAndBeverageMinimums => _foodAndBeverageMinimums ?? const [];
  set foodAndBeverageMinimums(List<int>? val) => _foodAndBeverageMinimums = val;
  void updateFoodAndBeverageMinimums(Function(List<int>) updateFn) =>
      updateFn(_foodAndBeverageMinimums ??= []);
  bool hasFoodAndBeverageMinimums() => _foodAndBeverageMinimums != null;

  // "rental_fees" field.
  List<int>? _rentalFees;
  List<int> get rentalFees => _rentalFees ?? const [];
  set rentalFees(List<int>? val) => _rentalFees = val;
  void updateRentalFees(Function(List<int>) updateFn) =>
      updateFn(_rentalFees ??= []);
  bool hasRentalFees() => _rentalFees != null;

  // "numGuests" field.
  int? _numGuests;
  int get numGuests => _numGuests ?? 0;
  set numGuests(int? val) => _numGuests = val;
  void incrementNumGuests(int amount) => _numGuests = numGuests + amount;
  bool hasNumGuests() => _numGuests != null;

  // "minutes" field.
  int? _minutes;
  int get minutes => _minutes ?? 0;
  set minutes(int? val) => _minutes = val;
  void incrementMinutes(int amount) => _minutes = minutes + amount;
  bool hasMinutes() => _minutes != null;

  // "foodPackages" field.
  List<int>? _foodPackages;
  List<int> get foodPackages => _foodPackages ?? const [];
  set foodPackages(List<int>? val) => _foodPackages = val;
  void updateFoodPackages(Function(List<int>) updateFn) =>
      updateFn(_foodPackages ??= []);
  bool hasFoodPackages() => _foodPackages != null;

  static CartSumsStruct fromMap(Map<String, dynamic> data) => CartSumsStruct(
        cartPK: castToType<int>(data['cartPK']),
        foodAndBeverageMinimums:
            getDataList(data['food_and_beverage_minimums']),
        rentalFees: getDataList(data['rental_fees']),
        numGuests: castToType<int>(data['numGuests']),
        minutes: castToType<int>(data['minutes']),
        foodPackages: getDataList(data['foodPackages']),
      );

  static CartSumsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartSumsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cartPK': _cartPK,
        'food_and_beverage_minimums': _foodAndBeverageMinimums,
        'rental_fees': _rentalFees,
        'numGuests': _numGuests,
        'minutes': _minutes,
        'foodPackages': _foodPackages,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cartPK': serializeParam(
          _cartPK,
          ParamType.int,
        ),
        'food_and_beverage_minimums': serializeParam(
          _foodAndBeverageMinimums,
          ParamType.int,
          true,
        ),
        'rental_fees': serializeParam(
          _rentalFees,
          ParamType.int,
          true,
        ),
        'numGuests': serializeParam(
          _numGuests,
          ParamType.int,
        ),
        'minutes': serializeParam(
          _minutes,
          ParamType.int,
        ),
        'foodPackages': serializeParam(
          _foodPackages,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static CartSumsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartSumsStruct(
        cartPK: deserializeParam(
          data['cartPK'],
          ParamType.int,
          false,
        ),
        foodAndBeverageMinimums: deserializeParam<int>(
          data['food_and_beverage_minimums'],
          ParamType.int,
          true,
        ),
        rentalFees: deserializeParam<int>(
          data['rental_fees'],
          ParamType.int,
          true,
        ),
        numGuests: deserializeParam(
          data['numGuests'],
          ParamType.int,
          false,
        ),
        minutes: deserializeParam(
          data['minutes'],
          ParamType.int,
          false,
        ),
        foodPackages: deserializeParam<int>(
          data['foodPackages'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'CartSumsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartSumsStruct &&
        cartPK == other.cartPK &&
        listEquality.equals(
            foodAndBeverageMinimums, other.foodAndBeverageMinimums) &&
        listEquality.equals(rentalFees, other.rentalFees) &&
        numGuests == other.numGuests &&
        minutes == other.minutes &&
        listEquality.equals(foodPackages, other.foodPackages);
  }

  @override
  int get hashCode => const ListEquality().hash([
        cartPK,
        foodAndBeverageMinimums,
        rentalFees,
        numGuests,
        minutes,
        foodPackages
      ]);
}

CartSumsStruct createCartSumsStruct({
  int? cartPK,
  int? numGuests,
  int? minutes,
}) =>
    CartSumsStruct(
      cartPK: cartPK,
      numGuests: numGuests,
      minutes: minutes,
    );
