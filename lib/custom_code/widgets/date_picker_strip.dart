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

class DatePickerStrip extends StatefulWidget {
  const DatePickerStrip({
    super.key,
    this.width,
    this.height,
    this.onDateSelected,
  });

  final double? width;
  final double? height;
  final Future Function()? onDateSelected;

  @override
  State<DatePickerStrip> createState() => _DatePickerStripState();
}

class _DatePickerStripState extends State<DatePickerStrip> {
  int _selectedIndex = -1;

  List<DateTime> _generateDates() {
    final List<DateTime> dates = [];
    final DateTime today = DateTime.now();
    for (int i = 1; i <= 14; i++) {
      dates.add(today.add(Duration(days: i)));
    }
    return dates;
  }

  String _getDayName(DateTime date) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[date.weekday - 1];
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final dates = _generateDates();
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final date = dates[index];
          final isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () async {
              setState(() {
                _selectedIndex = index;
              });
              FFAppState().newInspectionDate = _formatDate(date);
              if (widget.onDateSelected != null) {
                await widget.onDateSelected!();
              }
            },
            child: Container(
              width: 56,
              height: 72,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isSelected
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16),
                border: isSelected
                    ? null
                    : Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.5,
                      ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _getDayName(date),
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected
                          ? Colors.white
                          : FlutterFlowTheme.of(context).secondaryText,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    date.day.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSelected
                          ? Colors.white
                          : FlutterFlowTheme.of(context).primaryText,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
