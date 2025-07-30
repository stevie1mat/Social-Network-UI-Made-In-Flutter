import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseConfig {
  // Get Supabase credentials from environment variables with fallbacks
  static String get supabaseUrl {
    try {
      return dotenv.env['SUPABASE_URL'] ?? '';
    } catch (e) {
      return '';
    }
  }
  
  static String get supabaseAnonKey {
    try {
      return dotenv.env['SUPABASE_ANON_KEY'] ?? '';
    } catch (e) {
      return '';
    }
  }
} 