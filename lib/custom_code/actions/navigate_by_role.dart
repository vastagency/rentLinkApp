// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

Future navigateByRole(BuildContext context) async {
  final user = SupaFlow.client.auth.currentUser;
  if (user == null) return;

  final result = await SupaFlow.client
      .from('profiles')
      .select('role')
      .eq('id', user.id)
      .single();

  final role = result['role'] as String?;

  if (role == 'landlord') {
    context.goNamed('HomeLandLord');
  } else {
    context.goNamed('HomeTenant');
  }
}
