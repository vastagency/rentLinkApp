import '/components/button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_summary_screen_widget.dart' show PaymentSummaryScreenWidget;
import 'package:flutter/material.dart';

class PaymentSummaryScreenModel
    extends FlutterFlowModel<PaymentSummaryScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Model for Button.
  late Button2Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
