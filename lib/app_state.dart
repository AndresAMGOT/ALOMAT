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

  List<dynamic> _purchaseDetails = [];
  List<dynamic> get purchaseDetails => _purchaseDetails;
  set purchaseDetails(List<dynamic> value) {
    _purchaseDetails = value;
  }

  void addToPurchaseDetails(dynamic value) {
    purchaseDetails.add(value);
  }

  void removeFromPurchaseDetails(dynamic value) {
    purchaseDetails.remove(value);
  }

  void removeAtIndexFromPurchaseDetails(int index) {
    purchaseDetails.removeAt(index);
  }

  void updatePurchaseDetailsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    purchaseDetails[index] = updateFn(_purchaseDetails[index]);
  }

  void insertAtIndexInPurchaseDetails(int index, dynamic value) {
    purchaseDetails.insert(index, value);
  }

  double _SubTotal = 0.0;
  double get SubTotal => _SubTotal;
  set SubTotal(double value) {
    _SubTotal = value;
  }
}
