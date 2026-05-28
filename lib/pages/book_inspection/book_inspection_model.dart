import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'book_inspection_widget.dart' show BookInspectionWidget;
import 'package:flutter/material.dart';

class BookInspectionModel extends FlutterFlowModel<BookInspectionWidget> {
  ///  Local state fields for this page.

  String? selectedDate;

  String? selectedTime;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getSelectedDate] action in DatePickerStrip widget.
  String? pickedDate;
  // State field(s) for Text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
