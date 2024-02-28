import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/medina/manually_choosing_resturant_medina/manually_choosing_resturant_medina_widget.dart';
import '/medina/random_resturant_chosen_medina/random_resturant_chosen_medina_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'the_choosing_page_medina_widget.dart' show TheChoosingPageMedinaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TheChoosingPageMedinaModel
    extends FlutterFlowModel<TheChoosingPageMedinaWidget> {
  ///  Local state fields for this page.

  int? indexImage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? imageSizeMedina;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ResturantImagesMedinaRecord>? imageListMedina;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
