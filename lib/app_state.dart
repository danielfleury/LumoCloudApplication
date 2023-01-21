import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _fullscreen = false;
  bool get fullscreen => _fullscreen;
  set fullscreen(bool _value) {
    _fullscreen = _value;
  }

  DocumentReference? _focusedbodydocument =
      FirebaseFirestore.instance.doc('/BodyDocuments/7iC7fE5deGOnfnzzlkd0');
  DocumentReference? get focusedbodydocument => _focusedbodydocument;
  set focusedbodydocument(DocumentReference? _value) {
    _focusedbodydocument = _value;
  }

  int _BodyCarouselIndex = 0;
  int get BodyCarouselIndex => _BodyCarouselIndex;
  set BodyCarouselIndex(int _value) {
    _BodyCarouselIndex = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
