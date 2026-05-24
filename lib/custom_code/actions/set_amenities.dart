// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setAmenities(
  bool airCon,
  bool parking,
  bool security,
  bool wifi,
  bool generator,
  bool pool,
  bool gym,
  bool elevator,
) async {
  FFAppState().newPropertyAmenities.clear();
  if (airCon) FFAppState().newPropertyAmenities.add('Air Conditioning');
  if (parking) FFAppState().newPropertyAmenities.add('Parking Space');
  if (security) FFAppState().newPropertyAmenities.add('Air 24/7 Security');
  if (wifi) FFAppState().newPropertyAmenities.add('Wifi');
  if (generator) FFAppState().newPropertyAmenities.add('Generator');
  if (pool) FFAppState().newPropertyAmenities.add('Swimming Pool');
  if (gym) FFAppState().newPropertyAmenities.add('Gym');
  if (elevator) FFAppState().newPropertyAmenities.add('Elevator');
  FFAppState().notifyListeners();
}
