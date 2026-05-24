import '/components/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'message_list_screen_widget.dart' show MessageListScreenWidget;
import 'package:flutter/material.dart';

class MessageListScreenModel extends FlutterFlowModel<MessageListScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomNavModel.dispose();
  }
}
