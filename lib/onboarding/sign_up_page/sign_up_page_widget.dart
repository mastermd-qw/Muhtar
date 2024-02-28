import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_page_model.dart';
export 'sign_up_page_model.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({super.key});

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget>
    with TickerProviderStateMixin {
  late SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageModel());

    _model.textField1Controller ??= TextEditingController();
    _model.textField1FocusNode ??= FocusNode();

    _model.textField2Controller ??= TextEditingController();
    _model.textField2FocusNode ??= FocusNode();

    _model.textField3Controller ??= TextEditingController();
    _model.textField3FocusNode ??= FocusNode();

    _model.textField4Controller ??= TextEditingController();
    _model.textField4FocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x4C776FDA),
        appBar: AppBar(
          backgroundColor: Color(0xFF454FBA),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('OnBoardingPage');
            },
          ),
          title: Text(
            'انشاء حساب',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lalezar',
                  color: Colors.white,
                  fontSize: 35.0,
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/appbarbackground.png',
                fit: BoxFit.none,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF606EF5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/background.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Spacer(),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Text(
                          'انشاء حساب',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lalezar',
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: TextFormField(
                                controller: _model.textField1Controller,
                                focusNode: _model.textField1FocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textField1Controller',
                                  Duration(milliseconds: 100),
                                  () async {
                                    if (_model.textField1Controller.text !=
                                            null &&
                                        _model.textField1Controller.text !=
                                            '') {
                                      setState(() {
                                        FFAppState().DisplayNameState = false;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().DisplayNameState = true;
                                      });
                                    }
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'اسم المستخدم',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Lalezar',
                                        color: Color(0xFF606EF5),
                                        fontSize: 20.0,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FFAppState().DisplayNameState
                                          ? FlutterFlowTheme.of(context).error
                                          : Color(0xFFFCFDFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.textField1ControllerValidator
                                    .asValidator(context),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: TextFormField(
                                controller: _model.textField2Controller,
                                focusNode: _model.textField2FocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textField2Controller',
                                  Duration(milliseconds: 100),
                                  () async {
                                    if (_model.textField2Controller.text !=
                                            null &&
                                        _model.textField2Controller.text !=
                                            '') {
                                      setState(() {
                                        FFAppState().EmailState = false;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().EmailState = true;
                                      });
                                    }
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'الايميل',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Lalezar',
                                        color: Color(0xFF606EF5),
                                        fontSize: 20.0,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FFAppState().EmailState
                                          ? FlutterFlowTheme.of(context).error
                                          : Color(0xFFFCFDFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.textField2ControllerValidator
                                    .asValidator(context),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation2']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: TextFormField(
                                controller: _model.textField3Controller,
                                focusNode: _model.textField3FocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textField3Controller',
                                  Duration(milliseconds: 100),
                                  () async {
                                    if (_model.textField3Controller.text !=
                                            null &&
                                        _model.textField3Controller.text !=
                                            '') {
                                      setState(() {
                                        FFAppState().PasswordState = false;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().PasswordState = true;
                                      });
                                    }
                                  },
                                ),
                                obscureText: !_model.textField3Visibility,
                                decoration: InputDecoration(
                                  labelText: 'كلمة المرور',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Lalezar',
                                        color: Color(0xFF606EF5),
                                        fontSize: 20.0,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FFAppState().PasswordState
                                          ? FlutterFlowTheme.of(context).error
                                          : Color(0xFFFCFDFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.textField3Visibility =
                                          !_model.textField3Visibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.textField3Visibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                validator: _model.textField3ControllerValidator
                                    .asValidator(context),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation3']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textField4Controller,
                                focusNode: _model.textField4FocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textField4Controller',
                                  Duration(milliseconds: 100),
                                  () async {
                                    if (_model.textField4Controller.text !=
                                            null &&
                                        _model.textField4Controller.text !=
                                            '') {
                                      setState(() {
                                        FFAppState().ConfirmPasswordState =
                                            false;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().ConfirmPasswordState =
                                            true;
                                      });
                                    }
                                  },
                                ),
                                obscureText: !_model.textField4Visibility,
                                decoration: InputDecoration(
                                  labelText: 'تأكيد كلمة المرور',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Lalezar',
                                        color: Color(0xFF606EF5),
                                        fontSize: 20.0,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FFAppState().ConfirmPasswordState
                                          ? FlutterFlowTheme.of(context).error
                                          : Color(0xFFFCFDFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.textField4Visibility =
                                          !_model.textField4Visibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.textField4Visibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                validator: _model.textField4ControllerValidator
                                    .asValidator(context),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation4']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 100.0),
                        child: FFButtonWidget(
                          onPressed: ((_model.textField1Controller.text ==
                                          null ||
                                      _model.textField1Controller.text == '') ||
                                  (_model.textField2Controller.text == null ||
                                      _model.textField2Controller.text == '') ||
                                  (_model.textField3Controller.text == null ||
                                      _model.textField3Controller.text == '') ||
                                  (_model.textField4Controller.text == null ||
                                      _model.textField4Controller.text == ''))
                              ? null
                              : () async {
                                  await authManager.refreshUser();
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.textField1Controller.text !=
                                          null &&
                                      _model.textField1Controller.text != '') {
                                    setState(() {
                                      FFAppState().DisplayNameState = false;
                                    });
                                  } else {
                                    setState(() {
                                      FFAppState().DisplayNameState = true;
                                    });
                                  }

                                  if (_model.textField2Controller.text !=
                                          null &&
                                      _model.textField2Controller.text != '') {
                                    setState(() {
                                      FFAppState().EmailState = false;
                                    });
                                  } else {
                                    setState(() {
                                      FFAppState().EmailState = true;
                                    });
                                  }

                                  if (_model.textField3Controller.text !=
                                          null &&
                                      _model.textField3Controller.text != '') {
                                    setState(() {
                                      FFAppState().PasswordState = false;
                                    });
                                  } else {
                                    setState(() {
                                      FFAppState().PasswordState = true;
                                    });
                                  }

                                  if (_model.textField4Controller.text !=
                                          null &&
                                      _model.textField4Controller.text != '') {
                                    setState(() {
                                      FFAppState().ConfirmPasswordState = false;
                                    });
                                  } else {
                                    setState(() {
                                      FFAppState().ConfirmPasswordState = true;
                                    });
                                  }

                                  GoRouter.of(context).prepareAuthEvent();
                                  if (_model.textField3Controller.text !=
                                      _model.textField4Controller.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          '! كلمة المرور لا تتطابق',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user =
                                      await authManager.createAccountWithEmail(
                                    context,
                                    _model.textField2Controller.text,
                                    _model.textField3Controller.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  await UsersRecord.collection
                                      .doc(user.uid)
                                      .update(createUsersRecordData(
                                        displayName:
                                            _model.textField1Controller.text,
                                      ));

                                  if (currentUserEmailVerified) {
                                    context.pushNamedAuth(
                                        'MainPage', context.mounted);
                                  }
                                  await authManager.sendEmailVerification();
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('تنبيه'),
                                        content: Text(
                                            'يرجى التحقق من الايميل عبر الذهاب الى صندوق بريدك الالكتروني والضغط على الرابط وبعدها اذهب الى تسجيل الدخول'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('تمام'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                          text: 'التالي',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Lalezar',
                                  fontSize: 52.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                            disabledColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation']!),
                      ),
                      RichText(
                        textScaleFactor: MediaQuery.of(context).textScaleFactor,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ملاحظة: عندما تتحقق من الايميل اذهب الى ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lalezar',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: 'تسجيل الدخول',
                              style: GoogleFonts.getFont(
                                'Lalezar',
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontSize: 25.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
