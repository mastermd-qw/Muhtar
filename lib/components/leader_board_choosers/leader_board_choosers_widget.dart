import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leader_board_choosers_model.dart';
export 'leader_board_choosers_model.dart';

class LeaderBoardChoosersWidget extends StatefulWidget {
  const LeaderBoardChoosersWidget({
    super.key,
    this.userimage,
    this.username,
    this.userpoint,
  });

  final String? userimage;
  final String? username;
  final int? userpoint;

  @override
  State<LeaderBoardChoosersWidget> createState() =>
      _LeaderBoardChoosersWidgetState();
}

class _LeaderBoardChoosersWidgetState extends State<LeaderBoardChoosersWidget> {
  late LeaderBoardChoosersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaderBoardChoosersModel());

    _model.textController ??=
        TextEditingController(text: widget.userpoint?.toString());
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Container(
        width: 500.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: Color(0xFF454FBA),
          image: DecorationImage(
            fit: BoxFit.none,
            image: Image.asset(
              'assets/images/appbarbackground.png',
            ).image,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(28.0),
            bottomRight: Radius.circular(28.0),
            topLeft: Radius.circular(28.0),
            topRight: Radius.circular(28.0),
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(11.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget.userimage,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app1-ufv95d/assets/eauklbl05ni7/User-Profile-PNG-Image.png',
                          ),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/error_image.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      widget.username!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lalezar',
                            color: Color(0xFFFCFDFF),
                            fontSize: 25.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 15.0)),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(200.0, 5.8, 0.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Lalezar',
                                color: Color(0xFFFCFDFF),
                              ),
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lalezar',
                          color: Color(0xFFFCFDFF),
                          fontSize: 25.0,
                        ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
