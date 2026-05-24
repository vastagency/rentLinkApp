// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

class AmenityPill extends StatefulWidget {
  const AmenityPill({
    super.key,
    this.width,
    this.height,
    required this.amenityName,
  });

  final double? width;
  final double? height;
  final String amenityName;

  @override
  State<AmenityPill> createState() => _AmenityPillState();
}

class _AmenityPillState extends State<AmenityPill> {
  IconData _getIcon(String amenity) {
    switch (amenity) {
      case 'Air Conditioning':
        return Icons.ac_unit;
      case 'Parking Space':
        return Icons.local_parking;
      case 'Air 24/7 Security':
        return Icons.security;
      case 'Wifi':
        return Icons.wifi;
      case 'Generator':
        return Icons.power;
      case 'Swimming Pool':
        return Icons.pool;
      case 'Gym':
        return Icons.fitness_center;
      case 'Elevator':
        return Icons.elevator;
      case 'Prepaid Meter':
        return Icons.electric_meter;
      case 'Newly Built':
        return Icons.apartment;
      case 'Furnished':
        return Icons.chair;
      case 'Borehole Water':
        return Icons.water_drop;
      case 'POP Ceiling':
        return Icons.roofing;
      default:
        return Icons.check_circle_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _getIcon(widget.amenityName),
              size: 12,
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            SizedBox(width: 4),
            Text(
              widget.amenityName,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 10,
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
