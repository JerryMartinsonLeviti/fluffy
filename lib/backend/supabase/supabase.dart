import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://bnnhgirdsajerkaghlal.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJubmhnaXJkc2FqZXJrYWdobGFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIzMzk2NzQsImV4cCI6MjAyNzkxNTY3NH0.gy2BFdcMoyMHHlGn06aZc-ES-nLR-gJWiKcvVPzrkRY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
