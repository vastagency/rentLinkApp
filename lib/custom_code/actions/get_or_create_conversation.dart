// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> getOrCreateConversation(
  String tenantId,
  String landlordId,
  String propertyId,
) async {
  try {
    final existing = await SupaFlow.client
        .from('conversations')
        .select('id')
        .eq('tenant_id', tenantId)
        .eq('landlord_id', landlordId)
        .eq('property_id', propertyId)
        .maybeSingle();

    if (existing != null && existing['id'] != null) {
      return existing['id'] as String;
    }

    final created = await SupaFlow.client
        .from('conversations')
        .insert({
          'tenant_id': tenantId,
          'landlord_id': landlordId,
          'property_id': propertyId,
        })
        .select('id')
        .single();

    return created['id'] as String;
  } catch (e) {
    return null;
  }
}
