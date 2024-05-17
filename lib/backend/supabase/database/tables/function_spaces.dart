import '../database.dart';

class FunctionSpacesTable extends SupabaseTable<FunctionSpacesRow> {
  @override
  String get tableName => 'FunctionSpaces';

  @override
  FunctionSpacesRow createRow(Map<String, dynamic> data) =>
      FunctionSpacesRow(data);
}

class FunctionSpacesRow extends SupabaseDataRow {
  FunctionSpacesRow(super.data);

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

  int? get priceInCents => getField<int>('price_in_cents');
  set priceInCents(int? value) => setField<int>('price_in_cents', value);

  String? get unitOfMeasure => getField<String>('unit_of_measure');
  set unitOfMeasure(String? value) =>
      setField<String>('unit_of_measure', value);

  int get seatingCapacity => getField<int>('seating_capacity')!;
  set seatingCapacity(int value) => setField<int>('seating_capacity', value);

  int? get standingCapacity => getField<int>('standing_capacity');
  set standingCapacity(int? value) => setField<int>('standing_capacity', value);

  int? get squareFootage => getField<int>('square_footage');
  set squareFootage(int? value) => setField<int>('square_footage', value);
}
