import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _DisplayNameState = false;
  bool get DisplayNameState => _DisplayNameState;
  set DisplayNameState(bool _value) {
    _DisplayNameState = _value;
  }

  bool _EmailState = false;
  bool get EmailState => _EmailState;
  set EmailState(bool _value) {
    _EmailState = _value;
  }

  bool _PasswordState = false;
  bool get PasswordState => _PasswordState;
  set PasswordState(bool _value) {
    _PasswordState = _value;
  }

  bool _ConfirmPasswordState = false;
  bool get ConfirmPasswordState => _ConfirmPasswordState;
  set ConfirmPasswordState(bool _value) {
    _ConfirmPasswordState = _value;
  }

  bool _EmailStateLogin = false;
  bool get EmailStateLogin => _EmailStateLogin;
  set EmailStateLogin(bool _value) {
    _EmailStateLogin = _value;
  }

  bool _PasswordStateLogin = false;
  bool get PasswordStateLogin => _PasswordStateLogin;
  set PasswordStateLogin(bool _value) {
    _PasswordStateLogin = _value;
  }

  bool _IsFullListShown = true;
  bool get IsFullListShown => _IsFullListShown;
  set IsFullListShown(bool _value) {
    _IsFullListShown = _value;
  }

  bool _IsInTabuk = false;
  bool get IsInTabuk => _IsInTabuk;
  set IsInTabuk(bool _value) {
    _IsInTabuk = _value;
  }

  bool _IsInRiyadh = false;
  bool get IsInRiyadh => _IsInRiyadh;
  set IsInRiyadh(bool _value) {
    _IsInRiyadh = _value;
  }

  bool _IsInMecca = false;
  bool get IsInMecca => _IsInMecca;
  set IsInMecca(bool _value) {
    _IsInMecca = _value;
  }

  bool _IsInMedina = false;
  bool get IsInMedina => _IsInMedina;
  set IsInMedina(bool _value) {
    _IsInMedina = _value;
  }

  bool _IsInEasternProvince = false;
  bool get IsInEasternProvince => _IsInEasternProvince;
  set IsInEasternProvince(bool _value) {
    _IsInEasternProvince = _value;
  }

  bool _IsInAseer = false;
  bool get IsInAseer => _IsInAseer;
  set IsInAseer(bool _value) {
    _IsInAseer = _value;
  }

  bool _IsInQassim = false;
  bool get IsInQassim => _IsInQassim;
  set IsInQassim(bool _value) {
    _IsInQassim = _value;
  }

  bool _IsInHail = false;
  bool get IsInHail => _IsInHail;
  set IsInHail(bool _value) {
    _IsInHail = _value;
  }

  bool _IsInAlJawf = false;
  bool get IsInAlJawf => _IsInAlJawf;
  set IsInAlJawf(bool _value) {
    _IsInAlJawf = _value;
  }

  bool _IsInAlbahah = false;
  bool get IsInAlbahah => _IsInAlbahah;
  set IsInAlbahah(bool _value) {
    _IsInAlbahah = _value;
  }

  bool _IsInNajran = false;
  bool get IsInNajran => _IsInNajran;
  set IsInNajran(bool _value) {
    _IsInNajran = _value;
  }

  bool _IsInJazan = false;
  bool get IsInJazan => _IsInJazan;
  set IsInJazan(bool _value) {
    _IsInJazan = _value;
  }

  bool _IsInNorthernBorders = false;
  bool get IsInNorthernBorders => _IsInNorthernBorders;
  set IsInNorthernBorders(bool _value) {
    _IsInNorthernBorders = _value;
  }

  bool _PageClicked = false;
  bool get PageClicked => _PageClicked;
  set PageClicked(bool _value) {
    _PageClicked = _value;
  }

  bool _ShowConfetti = false;
  bool get ShowConfetti => _ShowConfetti;
  set ShowConfetti(bool _value) {
    _ShowConfetti = _value;
  }

  bool _ShowListView = false;
  bool get ShowListView => _ShowListView;
  set ShowListView(bool _value) {
    _ShowListView = _value;
  }

  bool _ShowArrow = false;
  bool get ShowArrow => _ShowArrow;
  set ShowArrow(bool _value) {
    _ShowArrow = _value;
  }
}
