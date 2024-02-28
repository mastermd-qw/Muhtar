import '/al_bahah/random_resturant_chosen_for_me_al_bahah/random_resturant_chosen_for_me_al_bahah_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_page_al_bahah_model.dart';
export 'main_page_al_bahah_model.dart';

class MainPageAlBahahWidget extends StatefulWidget {
  const MainPageAlBahahWidget({super.key});

  @override
  State<MainPageAlBahahWidget> createState() => _MainPageAlBahahWidgetState();
}

class _MainPageAlBahahWidgetState extends State<MainPageAlBahahWidget> {
  late MainPageAlBahahModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageAlBahahModel());
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
              context.goNamed('MainPage');
            },
          ),
          title: Text(
            'صفحة الأختيار',
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
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Spacer(),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.resturantSizeAlBahah =
                                          await queryRecentChosenResturantsAlBahahRecordCount();
                                      setState(() {
                                        _model.resturantIndex =
                                            valueOrDefault<int>(
                                          random_data.randomInteger(
                                              0,
                                              valueOrDefault<int>(
                                                (_model.resturantSizeAlBahah!) -
                                                    1,
                                                0,
                                              )),
                                          0,
                                        );
                                      });
                                      _model.resturantListAlBahah =
                                          await queryRecentChosenResturantsAlBahahRecordOnce(
                                        limit: 100,
                                      );
                                      setState(() {
                                        FFAppState().ShowConfetti = true;
                                      });
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: Container(
                                                height: 500.0,
                                                width: 300.0,
                                                child:
                                                    RandomResturantChosenForMeAlBahahWidget(
                                                  imagePath: _model
                                                      .resturantListAlBahah?[
                                                          _model
                                                              .resturantIndex!]
                                                      ?.resturantImage,
                                                  resturantName: _model
                                                      .resturantListAlBahah?[
                                                          _model
                                                              .resturantIndex!]
                                                      ?.resturantName,
                                                  username: _model
                                                      .resturantListAlBahah?[
                                                          _model
                                                              .resturantIndex!]
                                                      ?.username,
                                                  userImage: _model
                                                      .resturantListAlBahah?[
                                                          _model
                                                              .resturantIndex!]
                                                      ?.userImage,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      setState(() {});
                                    },
                                    text: 'اختارلي',
                                    options: FFButtonOptions(
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lalezar',
                                            color: Colors.white,
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
                                ),
                              ),
                              Text(
                                'أو',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFFCFDFF),
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.goNamed('TheChoosingPageAlBahah');
                                  },
                                  text: 'اختار لشخص',
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 50.0,
                        showsTestAd: true,
                        iOSAdUnitID: 'ca-app-pub-6022280407332433/3911495660',
                        androidAdUnitID:
                            'ca-app-pub-6022280407332433/3308860431',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
