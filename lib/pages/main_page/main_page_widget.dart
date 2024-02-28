import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {});
      _model.leaderBoardChoosers = await queryLeaderBoardChoosersRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.leaderBoardReceivers = await queryLeaderBoardReceiversRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });
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
        backgroundColor: Color(0xFF454FBA),
        endDrawer: Container(
          width: 240.0,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF454FBA),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/background-white.png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 35.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.timesCircle,
                                  color: Color(0xFFFCFDFF),
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 140.0,
                                          height: 140.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              currentUserPhoto,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app1-ufv95d/assets/eauklbl05ni7/User-Profile-PNG-Image.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: currentUserDisplayName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFFFCFDFF),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: ' مرحباً',
                                          style: TextStyle(
                                            color: Color(0xFFFCFDFF),
                                            fontSize: 20.0,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);

                                    context.pushNamed('ProfileSettingsPage');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 2.0, 0.0),
                                        child: Text(
                                          'اعدادت الملف الشخصي',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFFFCFDFF),
                                                fontSize: 18.0,
                                              ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.settings_outlined,
                                        color: Color(0xFFFCFDFF),
                                        size: 30.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().ShowArrow) {
                                  setState(() {
                                    FFAppState().ShowListView = false;
                                    FFAppState().ShowArrow = false;
                                  });
                                } else {
                                  setState(() {
                                    FFAppState().ShowListView = true;
                                    FFAppState().ShowArrow = true;
                                  });
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (FFAppState().ShowArrow == true)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 80.0, 0.0),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  if (FFAppState().ShowArrow == false)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 80.0, 0.0),
                                      child: Icon(
                                        Icons.arrow_left,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 4.0, 0.0),
                                    child: Text(
                                      'تواصل معنا',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFFCFDFF),
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.contact_phone,
                                    color: Color(0xFFFCFDFF),
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (FFAppState().ShowListView == true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://twitter.com/DeskVera');
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 0.0),
                                            child: Text(
                                              '(تويتر سابقاً) x منصة',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFCFDFF),
                                                    fontSize: 16.0,
                                                  ),
                                            ),
                                          ),
                                          Icon(
                                            FFIcons.kx,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchUrl(Uri(
                                          scheme: 'mailto',
                                          path: 'admin@deskvera.com',
                                        ));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 0.0),
                                            child: Text(
                                              'البريد الألكتروني',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFCFDFF),
                                                    fontSize: 16.0,
                                                  ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.mail,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (currentUserUid ==
                              random_data.randomName(true, false))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.pop(context);

                                  context.pushNamed('LeaderBoardPageChoosers');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 4.0, 0.0),
                                      child: Text(
                                        'قائمة المتصدرين : المختارين',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFCFDFF),
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.record_voice_over,
                                      color: Color(0xFFFCFDFF),
                                      size: 30.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          if (currentUserUid ==
                              random_data.randomName(true, false))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.pop(context);

                                  context.pushNamed('LeaderBoardPageReceivers');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 4.0, 0.0),
                                      child: Text(
                                        'قائمة المتصدرين : المحتارين',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFCFDFF),
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.recent_actors_sharp,
                                      color: Color(0xFFFCFDFF),
                                      size: 30.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          Spacer(),
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(
                                        'OnBoardingPage', context.mounted);
                                  },
                                  text: 'تسجيل الخروج',
                                  icon: Icon(
                                    Icons.logout_outlined,
                                    size: 25.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 555.0,
                                    height: 64.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFFCFDFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Lalezar',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 25.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF454FBA),
          automaticallyImplyLeading: false,
          title: Text(
            'الصفحة الرئيسية',
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
          centerTitle: true,
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
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Spacer(),
                          FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().IsInTabuk == true) {
                                context.goNamed('MainPageTabuk');
                              }
                              if (FFAppState().IsInRiyadh == true) {
                                context.goNamed('MainPageRiyadh');
                              }
                              if (FFAppState().IsInMecca == true) {
                                context.goNamed('MainPageMecca');
                              }
                              if (FFAppState().IsInMedina == true) {
                                context.goNamed('MainPageMedina');
                              }
                              if (FFAppState().IsInEasternProvince == true) {
                                context.goNamed('MainPageEasternProvince');
                              }
                              if (FFAppState().IsInAseer == true) {
                                context.goNamed('MainPageAseer');
                              }
                              if (FFAppState().IsInQassim == true) {
                                context.goNamed('MainPageQassim');
                              }
                              if (FFAppState().IsInHail == true) {
                                context.goNamed('MainPageHail');
                              }
                              if (FFAppState().IsInAlJawf == true) {
                                context.goNamed('MainPageAlJawf');
                              }
                              if (FFAppState().IsInAlbahah == true) {
                                context.goNamed('MainPageAlBahah');
                              }
                              if (FFAppState().IsInNajran == true) {
                                context.goNamed('MainPageNajran');
                              }
                              if (FFAppState().IsInJazan == true) {
                                context.goNamed('MainPageJazan');
                              }
                              if (FFAppState().IsInNorthernBorders == true) {
                                context.goNamed('MainPageNorthernBorders');
                              }
                            },
                            text: 'الذهاب لصفحة الأختيار',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFFCFDFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lalezar',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 28.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 580.0),
                            child: Text(
                              ':أختار منطقتك',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lalezar',
                                    color: Color(0xFFF8F8F8),
                                    fontSize: 35.0,
                                  ),
                            ),
                          ),
                        ),
                        if (currentUserUid ==
                            random_data.randomName(true, false))
                          Builder(
                            builder: (_) {
                              final child = Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 250.0, 0.0, 0.0),
                                      child: StreamBuilder<
                                          List<LeaderBoardChoosersRecord>>(
                                        stream: queryLeaderBoardChoosersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderBoardChoosersRecord>
                                              containerLeaderBoardChoosersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final containerLeaderBoardChoosersRecord =
                                              containerLeaderBoardChoosersRecordList
                                                      .isNotEmpty
                                                  ? containerLeaderBoardChoosersRecordList
                                                      .first
                                                  : null;
                                          return Material(
                                            color: Colors.transparent,
                                            elevation: 16.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(32.0),
                                                bottomRight:
                                                    Radius.circular(32.0),
                                                topLeft: Radius.circular(32.0),
                                                topRight: Radius.circular(32.0),
                                              ),
                                            ),
                                            child: Container(
                                              width: 359.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF202338),
                                                image: DecorationImage(
                                                  fit: BoxFit.none,
                                                  image: Image.asset(
                                                    'assets/images/appbarbackground.png',
                                                  ).image,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(32.0),
                                                  bottomRight:
                                                      Radius.circular(32.0),
                                                  topLeft:
                                                      Radius.circular(32.0),
                                                  topRight:
                                                      Radius.circular(32.0),
                                                ),
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  45.0),
                                                      child: Text(
                                                        'مجموع نقاطك في قائمة المتصدرين: المختارين',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lalezar',
                                                              color: Color(
                                                                  0xFFFCFDFF),
                                                              fontSize: 23.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  25.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          currentUserEmail ==
                                                                  containerLeaderBoardChoosersRecord
                                                                      ?.email
                                                              ? containerLeaderBoardChoosersRecord
                                                                  ?.userpoint
                                                                  ?.toString()
                                                              : '0',
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lalezar',
                                                              color: Color(
                                                                  0xFFFCFDFF),
                                                              fontSize: 35.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 500.0, 0.0, 0.0),
                                      child: StreamBuilder<
                                          List<LeaderBoardReceiversRecord>>(
                                        stream: queryLeaderBoardReceiversRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderBoardReceiversRecord>
                                              containerLeaderBoardReceiversRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final containerLeaderBoardReceiversRecord =
                                              containerLeaderBoardReceiversRecordList
                                                      .isNotEmpty
                                                  ? containerLeaderBoardReceiversRecordList
                                                      .first
                                                  : null;
                                          return Material(
                                            color: Colors.transparent,
                                            elevation: 16.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(32.0),
                                                bottomRight:
                                                    Radius.circular(32.0),
                                                topLeft: Radius.circular(32.0),
                                                topRight: Radius.circular(32.0),
                                              ),
                                            ),
                                            child: Container(
                                              width: 359.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF202338),
                                                image: DecorationImage(
                                                  fit: BoxFit.none,
                                                  image: Image.asset(
                                                    'assets/images/appbarbackground.png',
                                                  ).image,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(32.0),
                                                  bottomRight:
                                                      Radius.circular(32.0),
                                                  topLeft:
                                                      Radius.circular(32.0),
                                                  topRight:
                                                      Radius.circular(32.0),
                                                ),
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  45.0),
                                                      child: Text(
                                                        'مجموع نقاطك في قائمة المتصدرين: المحتارين',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lalezar',
                                                              color: Color(
                                                                  0xFFFCFDFF),
                                                              fontSize: 23.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  25.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          currentUserEmail ==
                                                                  containerLeaderBoardReceiversRecord
                                                                      ?.email
                                                              ? containerLeaderBoardReceiversRecord
                                                                  ?.userpoint
                                                                  ?.toString()
                                                              : '0',
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lalezar',
                                                              color: Color(
                                                                  0xFFFCFDFF),
                                                              fontSize: 35.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              );
                              if (FFAppState().PageClicked == false) {
                                return ClipRect(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 4.0,
                                      sigmaY: 4.0,
                                    ),
                                    child: child,
                                  ),
                                );
                              }
                              return child;
                            },
                          ),
                        if (FFAppState().PageClicked == false)
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.98),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  FFAppState().PageClicked = true;
                                });
                              },
                              child: Container(
                                height: 339.0,
                                decoration: BoxDecoration(),
                                child: Visibility(
                                  visible: currentUserUid ==
                                      random_data.randomName(true, false),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Stack(
                                          children: [
                                            AutoSizeText(
                                              'اظغط على الشاشه لأظهار النقاط',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lalezar',
                                                    color: Color(0xFFFCFDFF),
                                                    fontSize: 35.0,
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 0.0,
                                                  ),
                                              minFontSize: 1.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 80.0, 200.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'الرياض',
                            'مكة المكرمة',
                            'المدينة المنورة',
                            'المنطقة الشرقية',
                            'عسير',
                            'تبوك',
                            'حائل',
                            'القصيم',
                            'الجوف',
                            'الباحة',
                            'نجران',
                            'جيزان',
                            'الحدود الشمالية'
                          ],
                          onChanged: (val) async {
                            setState(() => _model.dropDownValue = val);
                            if (_model.dropDownValue == 'الرياض') {
                              FFAppState().update(() {
                                FFAppState().IsInRiyadh = true;
                              });
                            } else {
                              setState(() {
                                FFAppState().IsInRiyadh = false;
                              });
                            }

                            if (_model.dropDownValue == 'مكة المكرمة') {
                              FFAppState().update(() {
                                FFAppState().IsInMecca = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInMecca = false;
                              });
                            }

                            if (_model.dropDownValue == 'المدينة المنورة') {
                              FFAppState().update(() {
                                FFAppState().IsInMedina = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInMedina = false;
                              });
                            }

                            if (_model.dropDownValue == 'المنطقة الشرقية') {
                              FFAppState().update(() {
                                FFAppState().IsInEasternProvince = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInEasternProvince = false;
                              });
                            }

                            if (_model.dropDownValue == 'عسير') {
                              FFAppState().update(() {
                                FFAppState().IsInAseer = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInAseer = false;
                              });
                            }

                            if (_model.dropDownValue == 'تبوك') {
                              FFAppState().update(() {
                                FFAppState().IsInTabuk = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInTabuk = false;
                              });
                            }

                            if (_model.dropDownValue == 'حائل') {
                              FFAppState().update(() {
                                FFAppState().IsInHail = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInHail = false;
                              });
                            }

                            if (_model.dropDownValue == 'القصيم') {
                              FFAppState().update(() {
                                FFAppState().IsInQassim = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInQassim = false;
                              });
                            }

                            if (_model.dropDownValue == 'الجوف') {
                              FFAppState().update(() {
                                FFAppState().IsInAlJawf = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInAlJawf = false;
                              });
                            }

                            if (_model.dropDownValue == 'الباحة') {
                              FFAppState().update(() {
                                FFAppState().IsInAlbahah = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInAlbahah = false;
                              });
                            }

                            if (_model.dropDownValue == 'نجران') {
                              FFAppState().update(() {
                                FFAppState().IsInNajran = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInNajran = false;
                              });
                            }

                            if (_model.dropDownValue == 'جيزان') {
                              FFAppState().update(() {
                                FFAppState().IsInJazan = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInJazan = false;
                              });
                            }

                            if (_model.dropDownValue == 'الحدود الشمالية') {
                              FFAppState().update(() {
                                FFAppState().IsInNorthernBorders = true;
                              });
                            } else {
                              FFAppState().update(() {
                                FFAppState().IsInNorthernBorders = false;
                              });
                            }
                          },
                          width: 150.0,
                          height: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lalezar',
                                    fontSize: 18.0,
                                  ),
                          hintText: '..الرجاء الأختيار',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                showsTestAd: true,
                iOSAdUnitID: 'ca-app-pub-6022280407332433/3911495660',
                androidAdUnitID: 'ca-app-pub-6022280407332433/3308860431',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
