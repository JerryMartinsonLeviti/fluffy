import '../database.dart';

class ModifierGroupsTable extends SupabaseTable<ModifierGroupsRow> {
  @override
  String get tableName => 'ModifierGroups';

  @override
  ModifierGroupsRow createRow(Map<String, dynamic> data) =>
      ModifierGroupsRow(data);
}

class ModifierGroupsRow extends SupabaseDataRow {
  ModifierGroupsRow(super.data);

  @override
  SupabaseTable get table => ModifierGroupsTable();

  int get pKModifierGroups => getField<int>('PK_ModifierGroups')!;
  set pKModifierGroups(int value) => setField<int>('PK_ModifierGroups', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get modifierGroupName => getField<String>('modifier_group_name');
  set modifierGroupName(String? value) =>
      setField<String>('modifier_group_name', value);

  int? get fKModifier => getField<int>('FK_Modifier');
  set fKModifier(int? value) => setField<int>('FK_Modifier', value);

  int? get fKItem => getField<int>('FK_Item');
  set fKItem(int? value) => setField<int>('FK_Item', value);

  int? get fKVendor => getField<int>('FK_Vendor');
  set fKVendor(int? value) => setField<int>('FK_Vendor', value);
}
