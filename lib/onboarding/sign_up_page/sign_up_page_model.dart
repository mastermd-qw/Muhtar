import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;
  String? _textField1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى كتابة اسم المستخدم';
    }

    if (val.length < 4) {
      return 'ملاحظة: يجب ان يتكون اسم المستخدم من 4 أحرف على الأقل';
    }
    if (val.length > 8) {
      return 'ملاحظة: يجب الا يتخطى اسم المستخدم 8 أحرف';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'يرجى التأكد من كتابة اسم المستخدم بشكل صحيح';
    }
    return null;
  }

  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2Controller;
  String? Function(BuildContext, String?)? textField2ControllerValidator;
  String? _textField2ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى كتابة الأيميل';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'يرجى التأكد من كتابة الأيميل بشكل صحيح';
    }
    return null;
  }

  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode;
  TextEditingController? textField3Controller;
  late bool textField3Visibility;
  String? Function(BuildContext, String?)? textField3ControllerValidator;
  String? _textField3ControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for TextField4 widget.
  FocusNode? textField4FocusNode;
  TextEditingController? textField4Controller;
  late bool textField4Visibility;
  String? Function(BuildContext, String?)? textField4ControllerValidator;
  String? _textField4ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى التأكد من كلمة المرور';
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
    textField1ControllerValidator = _textField1ControllerValidator;
    textField2ControllerValidator = _textField2ControllerValidator;
    textField3Visibility = false;
    textField3ControllerValidator = _textField3ControllerValidator;
    textField4Visibility = false;
    textField4ControllerValidator = _textField4ControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textField1FocusNode?.dispose();
    textField1Controller?.dispose();

    textField2FocusNode?.dispose();
    textField2Controller?.dispose();

    textField3FocusNode?.dispose();
    textField3Controller?.dispose();

    textField4FocusNode?.dispose();
    textField4Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
