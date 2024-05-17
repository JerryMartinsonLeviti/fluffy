import '../database.dart';

class TasksTable extends SupabaseTable<TasksRow> {
  @override
  String get tableName => 'Tasks';

  @override
  TasksRow createRow(Map<String, dynamic> data) => TasksRow(data);
}

class TasksRow extends SupabaseDataRow {
  TasksRow(super.data);

  @override
  SupabaseTable get table => TasksTable();

  int get pKTasks => getField<int>('PK_Tasks')!;
  set pKTasks(int value) => setField<int>('PK_Tasks', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get taskName => getField<String>('TaskName');
  set taskName(String? value) => setField<String>('TaskName', value);

  int? get assignedToFKUserInfos => getField<int>('AssignedTo_FK_UserInfos');
  set assignedToFKUserInfos(int? value) =>
      setField<int>('AssignedTo_FK_UserInfos', value);

  DateTime? get dueDate => getField<DateTime>('DueDate');
  set dueDate(DateTime? value) => setField<DateTime>('DueDate', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
