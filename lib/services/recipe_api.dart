import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/recipe.dart';
import 'supabase_service.dart';

class RecipeApi {
  final SupabaseClient _client = SupabaseService.client;

  Future<List<Recipe>> getRecipes() async {
    try {
      final response = await _client
          .from('recipes')
          .select()
          .order('created_at', ascending: false)
          .timeout(const Duration(seconds: 10)); // Increased timeout from 50ms to 10s

      final List<dynamic> data = response as List<dynamic>;
      return data.map((json) => Recipe.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Recipe>> searchRecipes(String query) async {
    try {
      final response = await _client
          .from('recipes')
          .select()
          .ilike('title', '%$query%')
          .order('created_at', ascending: false)
          .timeout(const Duration(seconds: 10));

      final List<dynamic> data = response as List<dynamic>;
      return data.map((json) => Recipe.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  // Favorites functionality
  Future<void> toggleFavorite(int recipeId, bool isFavorite) async {
    // Favorites are currently handled locally in RecipeProvider.
  }
}
