import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/northern_borders/resturant_that_i_chose_northern_borders/resturant_that_i_chose_northern_borders_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'manually_choosing_resturant_northern_borders_model.dart';
export 'manually_choosing_resturant_northern_borders_model.dart';

class ManuallyChoosingResturantNorthernBordersWidget extends StatefulWidget {
  const ManuallyChoosingResturantNorthernBordersWidget({super.key});

  @override
  State<ManuallyChoosingResturantNorthernBordersWidget> createState() =>
      _ManuallyChoosingResturantNorthernBordersWidgetState();
}

class _ManuallyChoosingResturantNorthernBordersWidgetState
    extends State<ManuallyChoosingResturantNorthernBordersWidget> {
  late ManuallyChoosingResturantNorthernBordersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => ManuallyChoosingResturantNorthernBordersModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().IsInNorthernBorders = true;
      });
    });

    _model.textController ??= TextEditingController();
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

    return Container(
      width: 500.0,
      height: 600.0,
      decoration: BoxDecoration(
        color: Color(0xFFFCFDFF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 65.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (FFAppState().IsFullListShown)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                      child: StreamBuilder<
                          List<ResturantImagesNorthernBordersRecord>>(
                        stream: queryResturantImagesNorthernBordersRecord(),
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
                          List<ResturantImagesNorthernBordersRecord>
                              fullResturantListNorthernBordersResturantImagesNorthernBordersRecordList =
                              snapshot.data!;
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 25.0,
                              mainAxisSpacing: 25.0,
                              childAspectRatio: 1.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount:
                                fullResturantListNorthernBordersResturantImagesNorthernBordersRecordList
                                    .length,
                            itemBuilder: (context,
                                fullResturantListNorthernBordersIndex) {
                              final fullResturantListNorthernBordersResturantImagesNorthernBordersRecord =
                                  fullResturantListNorthernBordersResturantImagesNorthernBordersRecordList[
                                      fullResturantListNorthernBordersIndex];
                              return Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
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
                                            child: Container(
                                              height: 500.0,
                                              width: 300.0,
                                              child:
                                                  ResturantThatIChoseNorthernBordersWidget(
                                                imagePath:
                                                    fullResturantListNorthernBordersResturantImagesNorthernBordersRecord
                                                        .image,
                                                resturantName:
                                                    fullResturantListNorthernBordersResturantImagesNorthernBordersRecord
                                                        .resturantname,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 99.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFCFDFF),
                                      ),
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              fullResturantListNorthernBordersResturantImagesNorthernBordersRecord
                                                  .image,
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.89),
                                            child: Text(
                                              fullResturantListNorthernBordersResturantImagesNorthernBordersRecord
                                                  .resturantname,
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lalezar',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                if (!FFAppState().IsFullListShown)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final searchResult = _model.simpleSearchResults
                              .toList()
                              .take(1)
                              .toList();
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 25.0,
                              mainAxisSpacing: 25.0,
                              childAspectRatio: 1.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: searchResult.length,
                            itemBuilder: (context, searchResultIndex) {
                              final searchResultItem =
                                  searchResult[searchResultIndex];
                              return Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.textController?.clear();
                                      });
                                      setState(() {
                                        FFAppState().IsFullListShown = true;
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
                                            child: Container(
                                              height: 500.0,
                                              width: 300.0,
                                              child:
                                                  ResturantThatIChoseNorthernBordersWidget(
                                                imagePath: _model
                                                    .simpleSearchResults
                                                    .first
                                                    .image,
                                                resturantName: _model
                                                    .simpleSearchResults
                                                    .first
                                                    .resturantname,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 99.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFCFDFF),
                                      ),
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              _model.simpleSearchResults.first
                                                  .image,
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.89),
                                            child: Text(
                                              _model.simpleSearchResults.first
                                                  .resturantname,
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lalezar',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);

                  context.goNamed('MainPage');
                },
                text: 'اغلاق',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lalezar',
                        color: Colors.white,
                        fontSize: 25.0,
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
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: 322.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: Color(0xFFCFD5D9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 2000),
                            () async {
                              if ('' == null || '' == '') {
                                setState(() {
                                  FFAppState().IsFullListShown = false;
                                });
                              }
                              await queryResturantImagesNorthernBordersRecordOnce()
                                  .then(
                                    (records) => _model.simpleSearchResults =
                                        TextSearch(
                                      records
                                          .map(
                                            (record) =>
                                                TextSearchItem.fromTerms(record,
                                                    [record.resturantname!]),
                                          )
                                          .toList(),
                                    )
                                            .search(_model.textController.text)
                                            .map((r) => r.object)
                                            .toList(),
                                  )
                                  .onError((_, __) =>
                                      _model.simpleSearchResults = [])
                                  .whenComplete(() => setState(() {}));

                              setState(() {
                                FFAppState().IsFullListShown = false;
                              });
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: '...ابحث',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Lalezar',
                                  fontSize: 18.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lalezar',
                                    fontSize: 18.0,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.textController?.clear();
                          });
                          setState(() {
                            FFAppState().IsFullListShown = true;
                          });
                        },
                        child: Icon(
                          Icons.close_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
