import '../database.dart';

class LiaisonsTable extends SupabaseTable<LiaisonsRow> {
  @override
  String get tableName => 'Liaisons';

  @override
  LiaisonsRow createRow(Map<String, dynamic> data) => LiaisonsRow(data);
}

class LiaisonsRow extends SupabaseDataRow {
  LiaisonsRow(super.data);

  @override
  SupabaseTable get table => LiaisonsTable();

  int get pKLiaisons => getField<int>('PK_Liaisons')!;
  set pKLiaisons(int value) => setField<int>('PK_Liaisons', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get liaisonName => getField<String>('liaison_name');
  set liaisonName(String? value) => setField<String>('liaison_name', value);

  int get fKOrganization => getField<int>('FK_Organization')!;
  set fKOrganization(int value) => setField<int>('FK_Organization', value);
}
