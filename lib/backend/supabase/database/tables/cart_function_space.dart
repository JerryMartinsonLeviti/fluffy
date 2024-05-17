import '../database.dart';

class CartFunctionSpaceTable extends SupabaseTable<CartFunctionSpaceRow> {
  @override
  String get tableName => 'CartFunctionSpace';

  @override
  CartFunctionSpaceRow createRow(Map<String, dynamic> data) =>
      CartFunctionSpaceRow(data);
}

class CartFunctionSpaceRow extends SupabaseDataRow {
  CartFunctionSpaceRow(super.data);

  @override
  SupabaseTable get table => CartFunctionSpaceTable();

  int get pKCartFunctionSpace => getField<int>('PK_CartFunctionSpace')!;
  set pKCartFunctionSpace(int value) =>
      setField<int>('PK_CartFunctionSpace', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKCart => getField<int>('FK_Cart')!;
  set fKCart(int value) => setField<int>('FK_Cart', value);

  int get fKFunctionSpace => getField<int>('FK_FunctionSpace')!;
  set fKFunctionSpace(int value) => setField<int>('FK_FunctionSpace', value);
}
