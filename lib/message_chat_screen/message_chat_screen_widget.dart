import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'message_chat_screen_model.dart';
export 'message_chat_screen_model.dart';

class MessageChatScreenWidget extends StatefulWidget {
  const MessageChatScreenWidget({super.key});

  static String routeName = 'MessageChatScreen';
  static String routePath = '/messageChatScreen';

  @override
  State<MessageChatScreenWidget> createState() =>
      _MessageChatScreenWidgetState();
}

class _MessageChatScreenWidgetState extends State<MessageChatScreenWidget> {
  late MessageChatScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageChatScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [],
      ),
    );
  }
}
