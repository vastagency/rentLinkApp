import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'book_inspectionsssss_model.dart';
export 'book_inspectionsssss_model.dart';

class BookInspectionsssssWidget extends StatefulWidget {
  const BookInspectionsssssWidget({super.key});

  static String routeName = 'BookInspectionsssss';
  static String routePath = '/bookInspectionsssss';

  @override
  State<BookInspectionsssssWidget> createState() =>
      _BookInspectionsssssWidgetState();
}

class _BookInspectionsssssWidgetState extends State<BookInspectionsssssWidget> {
  late BookInspectionsssssModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookInspectionsssssModel());

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
