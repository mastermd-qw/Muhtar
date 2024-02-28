import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://keyqzlnprbwmzgmdwgtg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtleXF6bG5wcmJ3bXpnbWR3Z3RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA2NjQxODUsImV4cCI6MjAxNjI0MDE4NX0.50OqlY7CjoQOWQ0NO5NB36bWqIWz70As0gmVshv6s_M';

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
