import '../database.dart';

class TypesTable extends SupabaseTable<TypesRow> {
  @override
  String get tableName => 'Types';

  @override
  TypesRow createRow(Map<String, dynamic> data) => TypesRow(data);
}

class TypesRow extends SupabaseDataRow {
  TypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TypesTable();

  int get pKProductTypes => getField<int>('PK_ProductTypes')!;
  set pKProductTypes(int value) => setField<int>('PK_ProductTypes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productType => getField<String>('ProductType');
  set productType(String? value) => setField<String>('ProductType', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get parentType => getField<String>('ParentType');
  set parentType(String? value) => setField<String>('ParentType', value);

  bool? get group => getField<bool>('Group');
  set group(bool? value) => setField<bool>('Group', value);
}
