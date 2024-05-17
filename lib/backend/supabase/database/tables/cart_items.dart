import '../database.dart';

class CartItemsTable extends SupabaseTable<CartItemsRow> {
  @override
  String get tableName => 'CartItems';

  @override
  CartItemsRow createRow(Map<String, dynamic> data) => CartItemsRow(data);
}

class CartItemsRow extends SupabaseDataRow {
  CartItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartItemsTable();

  int get pKCartItems => getField<int>('PK_CartItems')!;
  set pKCartItems(int value) => setField<int>('PK_CartItems', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fKCart => getField<int>('FK_Cart');
  set fKCart(int? value) => setField<int>('FK_Cart', value);

  int? get gratuityInCents => getField<int>('gratuityInCents');
  set gratuityInCents(int? value) => setField<int>('gratuityInCents', value);

  int? get fKParent => getField<int>('FK_Parent');
  set fKParent(int? value) => setField<int>('FK_Parent', value);

  int? get fKProduct => getField<int>('FK_Product');
  set fKProduct(int? value) => setField<int>('FK_Product', value);

  int? get qtyCount => getField<int>('qtyCount');
  set qtyCount(int? value) => setField<int>('qtyCount', value);

  int? get qtyEvent => getField<int>('qtyEvent');
  set qtyEvent(int? value) => setField<int>('qtyEvent', value);

  int? get qtyGuests => getField<int>('qtyGuests');
  set qtyGuests(int? value) => setField<int>('qtyGuests', value);

  int? get qtyMiles => getField<int>('qtyMiles');
  set qtyMiles(int? value) => setField<int>('qtyMiles', value);

  int? get qtyMinutes => getField<int>('qtyMinutes');
  set qtyMinutes(int? value) => setField<int>('qtyMinutes', value);

  int? get subtotalnCents => getField<int>('subtotalnCents');
  set subtotalnCents(int? value) => setField<int>('subtotalnCents', value);

  int? get taxInCents => getField<int>('taxInCents');
  set taxInCents(int? value) => setField<int>('taxInCents', value);

  int? get totalInCents => getField<int>('totalInCents');
  set totalInCents(int? value) => setField<int>('totalInCents', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);

  int? get fKPackage => getField<int>('FK_Package');
  set fKPackage(int? value) => setField<int>('FK_Package', value);

  int? get fKFunctionSpace => getField<int>('FK_FunctionSpace');
  set fKFunctionSpace(int? value) => setField<int>('FK_FunctionSpace', value);
}
