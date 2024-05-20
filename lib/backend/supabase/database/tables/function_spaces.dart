import '../database.dart';

class FunctionSpacesTable extends SupabaseTable<FunctionSpacesRow> {
  @override
  String get tableName => 'FunctionSpaces';

  @override
  FunctionSpacesRow createRow(Map<String, dynamic> data) =>
      FunctionSpacesRow(data);
}

class FunctionSpacesRow extends SupabaseDataRow {
  FunctionSpacesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FunctionSpacesTable();

  int get pKFunctionSpaces => getField<int>('PK_FunctionSpaces')!;
  set pKFunctionSpaces(int value) => setField<int>('PK_FunctionSpaces', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKVendor => getField<int>('FK_Vendor')!;
  set fKVendor(int value) => setField<int>('FK_Vendor', value);

  int get fKVenue => getField<int>('FK_Venue')!;
  set fKVenue(int value) => setField<int>('FK_Venue', value);

  String? get functionSpaceName => getField<String>('function_space_name');
  set functionSpaceName(String? value) =>
      setField<String>('function_space_name', value);

  int? get rentalFeeInCents => getField<int>('rental_fee_in_cents');
  set rentalFeeInCents(int? value) =>
      setField<int>('rental_fee_in_cents', value);

  String get rentalFeeUnitOfMeasure =>
      getField<String>('rental_fee_unit_of_measure')!;
  set rentalFeeUnitOfMeasure(String value) =>
      setField<String>('rental_fee_unit_of_measure', value);

  int? get seatingCapacity => getField<int>('seating_capacity');
  set seatingCapacity(int? value) => setField<int>('seating_capacity', value);

  int? get standingCapacity => getField<int>('standing_capacity');
  set standingCapacity(int? value) => setField<int>('standing_capacity', value);

  int? get squareFootage => getField<int>('square_footage');
  set squareFootage(int? value) => setField<int>('square_footage', value);

  bool get rentalFeeApplies => getField<bool>('rental_fee_applies')!;
  set rentalFeeApplies(bool value) =>
      setField<bool>('rental_fee_applies', value);

  int get foodAndBevMinimumInCents =>
      getField<int>('food_and_bev_minimum_in_cents')!;
  set foodAndBevMinimumInCents(int value) =>
      setField<int>('food_and_bev_minimum_in_cents', value);

  String get foodAndBeverageMinUom =>
      getField<String>('food_and_beverage_min_uom')!;
  set foodAndBeverageMinUom(String value) =>
      setField<String>('food_and_beverage_min_uom', value);

  bool get foodAndBevApplies => getField<bool>('food_and_bev_applies')!;
  set foodAndBevApplies(bool value) =>
      setField<bool>('food_and_bev_applies', value);

  int? get conferenceCapacity => getField<int>('conference_capacity');
  set conferenceCapacity(int? value) =>
      setField<int>('conference_capacity', value);

  String? get functionSpaceDescription =>
      getField<String>('function_space_description');
  set functionSpaceDescription(String? value) =>
      setField<String>('function_space_description', value);
}
