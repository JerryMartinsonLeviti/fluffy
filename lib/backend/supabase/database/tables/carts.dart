import '../database.dart';

class CartsTable extends SupabaseTable<CartsRow> {
  @override
  String get tableName => 'Carts';

  @override
  CartsRow createRow(Map<String, dynamic> data) => CartsRow(data);
}

class CartsRow extends SupabaseDataRow {
  CartsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartsTable();

  int get pKCarts => getField<int>('PK_Carts')!;
  set pKCarts(int value) => setField<int>('PK_Carts', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get gratuityInCents => getField<int>('gratuity_in_cents')!;
  set gratuityInCents(int value) => setField<int>('gratuity_in_cents', value);

  int get paymentFeeInCents => getField<int>('payment_fee_in_cents')!;
  set paymentFeeInCents(int value) =>
      setField<int>('payment_fee_in_cents', value);

  int get qtyCount => getField<int>('qtyCount')!;
  set qtyCount(int value) => setField<int>('qtyCount', value);

  int? get qtyEvent => getField<int>('qtyEvent');
  set qtyEvent(int? value) => setField<int>('qtyEvent', value);

  int get qtyGuests => getField<int>('qtyGuests')!;
  set qtyGuests(int value) => setField<int>('qtyGuests', value);

  int get qtyMiles => getField<int>('qtyMiles')!;
  set qtyMiles(int value) => setField<int>('qtyMiles', value);

  int get qtyMinutes => getField<int>('qtyMinutes')!;
  set qtyMinutes(int value) => setField<int>('qtyMinutes', value);

  int get serviceFeeInCents => getField<int>('serviceFeeInCents')!;
  set serviceFeeInCents(int value) => setField<int>('serviceFeeInCents', value);

  int get subtotalInCents => getField<int>('subtotalInCents')!;
  set subtotalInCents(int value) => setField<int>('subtotalInCents', value);

  int get taxInCents => getField<int>('taxInCents')!;
  set taxInCents(int value) => setField<int>('taxInCents', value);

  int get totalInCents => getField<int>('totalInCents')!;
  set totalInCents(int value) => setField<int>('totalInCents', value);

  String get cartState => getField<String>('CartState')!;
  set cartState(String value) => setField<String>('CartState', value);

  String get previousCartState => getField<String>('previous_cart_state')!;
  set previousCartState(String value) =>
      setField<String>('previous_cart_state', value);

  int? get fKEvent => getField<int>('FK_Event');
  set fKEvent(int? value) => setField<int>('FK_Event', value);

  int get fKVenue => getField<int>('FK_Venue')!;
  set fKVenue(int value) => setField<int>('FK_Venue', value);

  String? get cartName => getField<String>('cart_name');
  set cartName(String? value) => setField<String>('cart_name', value);
}
