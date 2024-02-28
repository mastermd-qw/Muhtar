import '/backend/backend.dart';
import '/components/leader_board_choosers/leader_board_choosers_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leader_board_page_choosers_model.dart';
export 'leader_board_page_choosers_model.dart';

class LeaderBoardPageChoosersWidget extends StatefulWidget {
  const LeaderBoardPageChoosersWidget({super.key});

  @override
  State<LeaderBoardPageChoosersWidget> createState() =>
      _LeaderBoardPageChoosersWidgetState();
}

class _LeaderBoardPageChoosersWidgetState
    extends State<LeaderBoardPageChoosersWidget> {
  late LeaderBoardPageChoosersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaderBoardPageChoosersModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.pushNamed('MainPage');
            },
          ),
          title: Text(
            'قائمة المتصدرين',
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
          mainAxisAlignment: MainAxisAlignment.start,
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'المختارين',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lalezar',
                                    color: Color(0xFFFCFDFF),
                                    fontSize: 45.0,
                                  ),
                        ),
                        Expanded(
                          child: StreamBuilder<List<LeaderBoardChoosersRecord>>(
                            stream: queryLeaderBoardChoosersRecord(
                              queryBuilder: (leaderBoardChoosersRecord) =>
                                  leaderBoardChoosersRecord.orderBy('userpoint',
                                      descending: true),
                              limit: 10,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<LeaderBoardChoosersRecord>
                                  listViewLeaderBoardChoosersRecordList =
                                  snapshot.data!;
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewLeaderBoardChoosersRecordList
                                    .length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewLeaderBoardChoosersRecord =
                                      listViewLeaderBoardChoosersRecordList[
                                          listViewIndex];
                                  return LeaderBoardChoosersWidget(
                                    key: Key(
                                        'Keyc5t_${listViewIndex}_of_${listViewLeaderBoardChoosersRecordList.length}'),
                                    userimage: listViewLeaderBoardChoosersRecord
                                        .userimage,
                                    username: listViewLeaderBoardChoosersRecord
                                        .username,
                                    userpoint: listViewLeaderBoardChoosersRecord
                                        .userpoint,
                                  );
                                },
                              );
                            },
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
                        iOSAdUnitID: 'ca-app-pub-6022280407332433/1189129400',
                        androidAdUnitID:
                            'ca-app-pub-6022280407332433/3895183797',
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
