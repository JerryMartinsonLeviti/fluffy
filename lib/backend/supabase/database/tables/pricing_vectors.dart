import '../database.dart';

class PricingVectorsTable extends SupabaseTable<PricingVectorsRow> {
  @override
  String get tableName => 'PricingVectors';

  @override
  PricingVectorsRow createRow(Map<String, dynamic> data) =>
      PricingVectorsRow(data);
}

class PricingVectorsRow extends SupabaseDataRow {
  PricingVectorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PricingVectorsTable();

  int get pKPricingVectors => getField<int>('PK_PricingVectors')!;
  set pKPricingVectors(int value) => setField<int>('PK_PricingVectors', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get maxQty => getField<int>('maxQty');
  set maxQty(int? value) => setField<int>('maxQty', value);

  int? get minQty => getField<int>('minQty');
  set minQty(int? value) => setField<int>('minQty', value);

  int? get fKProducts => getField<int>('FK_Products');
  set fKProducts(int? value) => setField<int>('FK_Products', value);

  bool? get pricedPerCount => getField<bool>('pricedPerCount');
  set pricedPerCount(bool? value) => setField<bool>('pricedPerCount', value);

  bool? get pricedPerEvent => getField<bool>('pricedPerEvent');
  set pricedPerEvent(bool? value) => setField<bool>('pricedPerEvent', value);

  bool? get pricedPerGuest => getField<bool>('pricedPerGuest');
  set pricedPerGuest(bool? value) => setField<bool>('pricedPerGuest', value);

  bool? get pricedPerMile => getField<bool>('pricedPerMile');
  set pricedPerMile(bool? value) => setField<bool>('pricedPerMile', value);

  bool? get pricedPerMinute => getField<bool>('pricedPerMinute');
  set pricedPerMinute(bool? value) => setField<bool>('pricedPerMinute', value);
}
