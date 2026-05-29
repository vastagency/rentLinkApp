import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String getGreeting() {
  final hour = DateTime.now().hour;
  if (hour < 12) return 'Good Morning';
  if (hour < 17) return 'Good Afternoon';
  return 'Good Evening';
}

int stringToInt(String value) {
  return int.tryParse(value) ?? 0;
}

double stringToDouble(String value) {
  return double.tryParse(value) ?? 0.0;
}

int incrementIndex(int index) {
  return index + 1;
}

int decrementIndex(int index) {
  return index - 1;
}

bool isGreaterThanZero(int value) {
  return value > 0;
}
