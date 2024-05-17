import '../database.dart';

class CartPackageTable extends SupabaseTable<CartPackageRow> {
  @override
  String get tableName => 'CartPackage';

  @override
  CartPackageRow createRow(Map<String, dynamic> data) => CartPackageRow(data);
}

class CartPackageRow extends SupabaseDataRow {
  CartPackageRow(super.data);

  @override
  SupabaseTable get table => CartPackageTable();

  int get pKCartPackage => getField<int>('PK_CartPackage')!;
  set pKCartPackage(int value) => setField<int>('PK_CartPackage', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fKCart => getField<int>('FK_Cart')!;
  set fKCart(int value) => setField<int>('FK_Cart', value);

  int get fKPackage => getField<int>('FK_Package')!;
  set fKPackage(int value) => setField<int>('FK_Package', value);
}
