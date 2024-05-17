import '../database.dart';

class PricingElementsTable extends SupabaseTable<PricingElementsRow> {
  @override
  String get tableName => 'PricingElements';

  @override
  PricingElementsRow createRow(Map<String, dynamic> data) =>
      PricingElementsRow(data);
}

class PricingElementsRow extends SupabaseDataRow {
  PricingElementsRow(super.data);

  @override
  SupabaseTable get table => PricingElementsTable();

  int get pKPricingElements => getField<int>('PK_PricingElements')!;
  set pKPricingElements(int value) =>
      setField<int>('PK_PricingElements', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get basePriceInCents => getField<int>('basePriceInCents');
  set basePriceInCents(int? value) => setField<int>('basePriceInCents', value);

  bool? get isTiered => getField<bool>('isTiered');
  set isTiered(bool? value) => setField<bool>('isTiered', value);

  bool? get isVolume => getField<bool>('isVolume');
  set isVolume(bool? value) => setField<bool>('isVolume', value);

  int? get maxQty => getField<int>('maxQty');
  set maxQty(int? value) => setField<int>('maxQty', value);

  int? get minQty => getField<int>('minQty');
  set minQty(int? value) => setField<int>('minQty', value);

  int? get minPriceInCents => getField<int>('minPriceInCents');
  set minPriceInCents(int? value) => setField<int>('minPriceInCents', value);

  int? get unitPrinceInCents => getField<int>('unitPrinceInCents');
  set unitPrinceInCents(int? value) =>
      setField<int>('unitPrinceInCents', value);

  int? get fKPricingVectors => getField<int>('FK_PricingVectors');
  set fKPricingVectors(int? value) => setField<int>('FK_PricingVectors', value);
}
