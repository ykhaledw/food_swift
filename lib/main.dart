import 'package:flutter/material.dart';
import 'package:food_swift/core/helpers/supabase_key.dart';
import 'package:food_swift/core/routing/app_router.dart';
import 'package:food_swift/food_swift.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async{
  await Supabase.initialize(
    url: SupabaseKey.supabaseUrl,
    anonKey: SupabaseKey.supabaseAnonKey,
  );
  runApp(FoodSwift(appRouter: AppRouter(),));
}

