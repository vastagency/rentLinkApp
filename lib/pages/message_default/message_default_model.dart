import '/components/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'message_default_widget.dart' show MessageDefaultWidget;
import 'package:flutter/material.dart';

class MessageDefaultModel extends FlutterFlowModel<MessageDefaultWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    bottomNavModel.dispose();
  }
}
