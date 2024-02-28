import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resturant_that_i_chose_qassim_model.dart';
export 'resturant_that_i_chose_qassim_model.dart';

class ResturantThatIChoseQassimWidget extends StatefulWidget {
  const ResturantThatIChoseQassimWidget({
    super.key,
    this.imagePath,
    this.resturantName,
  });

  final String? imagePath;
  final String? resturantName;

  @override
  State<ResturantThatIChoseQassimWidget> createState() =>
      _ResturantThatIChoseQassimWidgetState();
}

class _ResturantThatIChoseQassimWidgetState
    extends State<ResturantThatIChoseQassimWidget> {
  late ResturantThatIChoseQassimModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResturantThatIChoseQassimModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 300.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'تهانينأً',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lalezar',
                          fontSize: 35.0,
                        ),
                  ),
                ),
              ),
              Text(
                ':لقد اخترت مطعم',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lalezar',
                      fontSize: 25.0,
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.imagePath!,
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.resturantName,
                  'مطعم',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lalezar',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 35.0,
                    ),
              ),
              if (currentUserUid == random_data.randomName(true, false))
                Text(
                  'ملاحظة: في كل مرة تختار لشخص ما ستضيف اليك 50 نقطة في لوحة المتصدرين: المختارين',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lalezar',
                        fontSize: 20.0,
                      ),
                ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var recentChosenResturantsQassimRecordReference =
                        RecentChosenResturantsQassimRecord.collection.doc();
                    await recentChosenResturantsQassimRecordReference
                        .set(createRecentChosenResturantsQassimRecordData(
                      resturantImage: widget.imagePath,
                      resturantName: widget.resturantName,
                      username: currentUserDisplayName,
                      userImage: currentUserPhoto,
                    ));
                    _model.recentChosenResturant =
                        RecentChosenResturantsQassimRecord.getDocumentFromData(
                            createRecentChosenResturantsQassimRecordData(
                              resturantImage: widget.imagePath,
                              resturantName: widget.resturantName,
                              username: currentUserDisplayName,
                              userImage: currentUserPhoto,
                            ),
                            recentChosenResturantsQassimRecordReference);

                    context.goNamed('MainPage');

                    setState(() {
                      FFAppState().ShowConfetti = false;
                    });

                    setState(() {});
                  },
                  text: 'تمام',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(42.0, 0.0, 42.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lalezar',
                          color: Color(0xFFFCFDFF),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
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
          if (FFAppState().ShowConfetti == true)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 350.0,
                height: 500.0,
                child: custom_widgets.ConfettiOverlay(
                  width: 350.0,
                  height: 500.0,
                  loop: false,
                  particleCount: 0,
                  gravity: 0.0,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
