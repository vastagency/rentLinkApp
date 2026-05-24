import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_property1_widget.dart' show AddProperty1Widget;
import 'package:flutter/material.dart';

class AddProperty1Model extends FlutterFlowModel<AddProperty1Widget> {
  ///  Local state fields for this page.

  String selectedFurnishing = 'furnished';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;
  // State field(s) for DropDownType widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;
  // State field(s) for DropDownBedrooms widget.
  String? dropDownBedroomsValue;
  FormFieldController<String>? dropDownBedroomsValueController;
  // State field(s) for DropDownBathrooms widget.
  String? dropDownBathroomsValue;
  FormFieldController<String>? dropDownBathroomsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
