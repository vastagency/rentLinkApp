import '/components/bottom_nav_landlord_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'message_list_screen_landlord_widget.dart'
    show MessageListScreenLandlordWidget;
import 'package:flutter/material.dart';

class MessageListScreenLandlordModel
    extends FlutterFlowModel<MessageListScreenLandlordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BottomNavLandlord component.
  late BottomNavLandlordModel bottomNavLandlordModel;

  @override
  void initState(BuildContext context) {
    bottomNavLandlordModel =
        createModel(context, () => BottomNavLandlordModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomNavLandlordModel.dispose();
  }
}
