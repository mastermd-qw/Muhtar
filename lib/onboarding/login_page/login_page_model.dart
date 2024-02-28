import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى كتابة الأيميل';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'يرجى التأكد من كتابة الأيميل بشكل صحيح';
    }
    return null;
  }

  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2Controller;
  late bool textField2Visibility;
  String? Function(BuildContext, String?)? textField2ControllerValidator;
  String? _textField2ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى كتابة كلمة المرور';
    }

    if (val.length < 6) {
      return 'ملاحظة: يجب ان تحتوي كلمة المرور على الأقل 6 أحرف';
    }
    if (val.length > 15) {
      return 'ملاحظة: يجب الا تتخطى كلمة المرور 15 حرف';
    }
    if (!RegExp(
            '^(?=.*[0-9])(?=.*[!@#\$%^&*()-_+=])[A-Za-z0-9!@#\$%^&*()-_+=]{7,14}\$')
        .hasMatch(val)) {
      return 'ملاحظة: يجب ان تحتوي كلمة المرور على رقم واحد ورمز واحد';
    }
    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    textField2Visibility = false;
    textField2ControllerValidator = _textField2ControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();

    textField2FocusNode?.dispose();
    textField2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
