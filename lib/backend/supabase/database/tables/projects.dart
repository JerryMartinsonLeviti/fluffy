import '../database.dart';

class ProjectsTable extends SupabaseTable<ProjectsRow> {
  @override
  String get tableName => 'Projects';

  @override
  ProjectsRow createRow(Map<String, dynamic> data) => ProjectsRow(data);
}

class ProjectsRow extends SupabaseDataRow {
  ProjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjectsTable();

  int get pKProjects => getField<int>('PK_Projects')!;
  set pKProjects(int value) => setField<int>('PK_Projects', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get guestCount => getField<int>('guestCount');
  set guestCount(int? value) => setField<int>('guestCount', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get budgetInCents => getField<int>('budgetInCents');
  set budgetInCents(int? value) => setField<int>('budgetInCents', value);
}
