import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  // TODO: Replace with your actual Supabase URL and Anon Key
  static const String supabaseUrl = 'https://znqlaaitfittxcujjuwp.supabase.co';
  static const String supabaseAnonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpucWxhYWl0Zml0dHhjdWpqdXdwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQwNjE5MTUsImV4cCI6MjA3OTYzNzkxNX0.CzQ4Jzm2C3Nhbhj1LEYITgZaBAFEQZu2jZ4onnGnOcM';

  static final SupabaseClient client = Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  }
}
