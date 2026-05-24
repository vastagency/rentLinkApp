import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_property2_widget.dart' show AddProperty2Widget;
import 'package:flutter/material.dart';

class AddProperty2Model extends FlutterFlowModel<AddProperty2Widget> {
  ///  Local state fields for this page.

  String selectedState = 'selected State';

  String selectedCity = 'selected City';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Text widget.
  FocusNode? textFocusNode1;
  TextEditingController? textTextController1;
  String? Function(BuildContext, String?)? textTextController1Validator;
  // Stores action output result for [Custom Action - showStatePicker] action in Container widget.
  String? pickedState;
  // Stores action output result for [Custom Action - showStatePicker] action in Container widget.
  String? pickedCity;
  // State field(s) for Text widget.
  FocusNode? textFocusNode2;
  TextEditingController? textTextController2;
  String? Function(BuildContext, String?)? textTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFocusNode1?.dispose();
    textTextController1?.dispose();

    textFocusNode2?.dispose();
    textTextController2?.dispose();
  }
}
