import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_property3_widget.dart' show AddProperty3Widget;
import 'package:flutter/material.dart';

class AddProperty3Model extends FlutterFlowModel<AddProperty3Widget> {
  ///  Local state fields for this page.

  String selectedRentPeriod = 'annually';

  ///  State fields for stateful widgets in this page.

  // State field(s) for rentAmount widget.
  FocusNode? rentAmountFocusNode;
  TextEditingController? rentAmountTextController;
  String? Function(BuildContext, String?)? rentAmountTextControllerValidator;
  // State field(s) for DropDownRentPeriod widget.
  String? dropDownRentPeriodValue;
  FormFieldController<String>? dropDownRentPeriodValueController;
  // State field(s) for serviceCharge widget.
  FocusNode? serviceChargeFocusNode;
  TextEditingController? serviceChargeTextController;
  String? Function(BuildContext, String?)? serviceChargeTextControllerValidator;
  // State field(s) for agencyFee widget.
  FocusNode? agencyFeeFocusNode;
  TextEditingController? agencyFeeTextController;
  String? Function(BuildContext, String?)? agencyFeeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rentAmountFocusNode?.dispose();
    rentAmountTextController?.dispose();

    serviceChargeFocusNode?.dispose();
    serviceChargeTextController?.dispose();

    agencyFeeFocusNode?.dispose();
    agencyFeeTextController?.dispose();
  }
}
