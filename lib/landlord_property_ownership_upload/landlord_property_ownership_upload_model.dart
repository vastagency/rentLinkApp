import '/components/button4_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'landlord_property_ownership_upload_widget.dart'
    show LandlordPropertyOwnershipUploadWidget;
import 'package:flutter/material.dart';

class LandlordPropertyOwnershipUploadModel
    extends FlutterFlowModel<LandlordPropertyOwnershipUploadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
