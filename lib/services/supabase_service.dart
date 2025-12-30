import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  // TODO: Replace with your actual Supabase URL and Anon Key
  static const String supabaseUrl = 'https://ufgxlzsjdauagysanmib.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVmZ3hsenNqZGF1YWd5c2FubWliIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY5OTE3NDQsImV4cCI6MjA4MjU2Nzc0NH0.Ccdkxhiu4TY7EuHpG80uiNlwwYy6-h8nenJKGSlzhTA';

  static SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }
}
