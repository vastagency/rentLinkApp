import 'package:flutter/material.dart';

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

  String _currentUserRole = '';
  String get currentUserRole => _currentUserRole;
  set currentUserRole(String value) {
    _currentUserRole = value;
  }

  String _newPropertyTitle = '';
  String get newPropertyTitle => _newPropertyTitle;
  set newPropertyTitle(String value) {
    _newPropertyTitle = value;
  }

  String _newPropertyType = '';
  String get newPropertyType => _newPropertyType;
  set newPropertyType(String value) {
    _newPropertyType = value;
  }

  int _newPropertyBedrooms = 0;
  int get newPropertyBedrooms => _newPropertyBedrooms;
  set newPropertyBedrooms(int value) {
    _newPropertyBedrooms = value;
  }

  int _newPropertyBathrooms = 0;
  int get newPropertyBathrooms => _newPropertyBathrooms;
  set newPropertyBathrooms(int value) {
    _newPropertyBathrooms = value;
  }

  String _newPropertyFurnishing = '';
  String get newPropertyFurnishing => _newPropertyFurnishing;
  set newPropertyFurnishing(String value) {
    _newPropertyFurnishing = value;
  }

  String _newPropertyAddress = '';
  String get newPropertyAddress => _newPropertyAddress;
  set newPropertyAddress(String value) {
    _newPropertyAddress = value;
  }

  String _newPropertyState = '';
  String get newPropertyState => _newPropertyState;
  set newPropertyState(String value) {
    _newPropertyState = value;
  }

  String _newPropertyCity = '';
  String get newPropertyCity => _newPropertyCity;
  set newPropertyCity(String value) {
    _newPropertyCity = value;
  }

  String _newPropertyLandmark = '';
  String get newPropertyLandmark => _newPropertyLandmark;
  set newPropertyLandmark(String value) {
    _newPropertyLandmark = value;
  }

  double _newPropertyRentAmount = 0.0;
  double get newPropertyRentAmount => _newPropertyRentAmount;
  set newPropertyRentAmount(double value) {
    _newPropertyRentAmount = value;
  }

  String _newPropertyRentPeriod = '';
  String get newPropertyRentPeriod => _newPropertyRentPeriod;
  set newPropertyRentPeriod(String value) {
    _newPropertyRentPeriod = value;
  }

  double _newPropertyServiceCharge = 0.0;
  double get newPropertyServiceCharge => _newPropertyServiceCharge;
  set newPropertyServiceCharge(double value) {
    _newPropertyServiceCharge = value;
  }

  double _newPropertyAgencyFee = 0.0;
  double get newPropertyAgencyFee => _newPropertyAgencyFee;
  set newPropertyAgencyFee(double value) {
    _newPropertyAgencyFee = value;
  }

  List<String> _newPropertyAmenities = [];
  List<String> get newPropertyAmenities => _newPropertyAmenities;
  set newPropertyAmenities(List<String> value) {
    _newPropertyAmenities = value;
  }

  void addToNewPropertyAmenities(String value) {
    newPropertyAmenities.add(value);
  }

  void removeFromNewPropertyAmenities(String value) {
    newPropertyAmenities.remove(value);
  }

  void removeAtIndexFromNewPropertyAmenities(int index) {
    newPropertyAmenities.removeAt(index);
  }

  void updateNewPropertyAmenitiesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    newPropertyAmenities[index] = updateFn(_newPropertyAmenities[index]);
  }

  void insertAtIndexInNewPropertyAmenities(int index, String value) {
    newPropertyAmenities.insert(index, value);
  }

  List<String> _newPropertyPhotos = [];
  List<String> get newPropertyPhotos => _newPropertyPhotos;
  set newPropertyPhotos(List<String> value) {
    _newPropertyPhotos = value;
  }

  void addToNewPropertyPhotos(String value) {
    newPropertyPhotos.add(value);
  }

  void removeFromNewPropertyPhotos(String value) {
    newPropertyPhotos.remove(value);
  }

  void removeAtIndexFromNewPropertyPhotos(int index) {
    newPropertyPhotos.removeAt(index);
  }

  void updateNewPropertyPhotosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    newPropertyPhotos[index] = updateFn(_newPropertyPhotos[index]);
  }

  void insertAtIndexInNewPropertyPhotos(int index, String value) {
    newPropertyPhotos.insert(index, value);
  }

  String _newInspectionDate = '';
  String get newInspectionDate => _newInspectionDate;
  set newInspectionDate(String value) {
    _newInspectionDate = value;
  }
}
