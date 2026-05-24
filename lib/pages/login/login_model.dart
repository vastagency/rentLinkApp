import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailFieldLogin widget.
  FocusNode? emailFieldLoginFocusNode;
  TextEditingController? emailFieldLoginTextController;
  String? Function(BuildContext, String?)?
      emailFieldLoginTextControllerValidator;
  String? _emailFieldLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email address is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordFieldLogin widget.
  FocusNode? passwordFieldLoginFocusNode;
  TextEditingController? passwordFieldLoginTextController;
  late bool passwordFieldLoginVisibility;
  String? Function(BuildContext, String?)?
      passwordFieldLoginTextControllerValidator;
  String? _passwordFieldLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    emailFieldLoginTextControllerValidator =
        _emailFieldLoginTextControllerValidator;
    passwordFieldLoginVisibility = false;
    passwordFieldLoginTextControllerValidator =
        _passwordFieldLoginTextControllerValidator;
  }

  @override
  void dispose() {
    emailFieldLoginFocusNode?.dispose();
    emailFieldLoginTextController?.dispose();

    passwordFieldLoginFocusNode?.dispose();
    passwordFieldLoginTextController?.dispose();
  }
}
