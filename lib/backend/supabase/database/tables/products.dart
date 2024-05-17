import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'Products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  int get pKProducts => getField<int>('PK_Products')!;
  set pKProducts(int value) => setField<int>('PK_Products', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get headline => getField<String>('headline');
  set headline(String? value) => setField<String>('headline', value);

  int? get fKProductsAssetCollection =>
      getField<int>('FK_Products_AssetCollection');
  set fKProductsAssetCollection(int? value) =>
      setField<int>('FK_Products_AssetCollection', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get maxGuests => getField<int>('maxGuests');
  set maxGuests(int? value) => setField<int>('maxGuests', value);

  int? get minGuests => getField<int>('minGuests');
  set minGuests(int? value) => setField<int>('minGuests', value);

  int? get fKProductsSummaryImageAssets =>
      getField<int>('FK_Products_summaryImageAssets');
  set fKProductsSummaryImageAssets(int? value) =>
      setField<int>('FK_Products_summaryImageAssets', value);

  int? get fKProductTypes => getField<int>('FK_ProductTypes');
  set fKProductTypes(int? value) => setField<int>('FK_ProductTypes', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  String? get internalName => getField<String>('internal_name');
  set internalName(String? value) => setField<String>('internal_name', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get publicDescription => getField<String>('public_description');
  set publicDescription(String? value) =>
      setField<String>('public_description', value);

  String? get internalDescription => getField<String>('internal_description');
  set internalDescription(String? value) =>
      setField<String>('internal_description', value);

  List<int> get fKLISTRestaurantLocations =>
      getListField<int>('FK_LIST_RestaurantLocations');
  set fKLISTRestaurantLocations(List<int>? value) =>
      setListField<int>('FK_LIST_RestaurantLocations', value);

  int? get priceInCents => getField<int>('priceInCents');
  set priceInCents(int? value) => setField<int>('priceInCents', value);

  String? get unitOfMeasure => getField<String>('unit_of_measure');
  set unitOfMeasure(String? value) =>
      setField<String>('unit_of_measure', value);
}
