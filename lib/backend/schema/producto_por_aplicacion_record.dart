import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoPorAplicacionRecord extends FirestoreRecord {
  ProductoPorAplicacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "Solicitud" field.
  DocumentReference? _solicitud;
  DocumentReference? get solicitud => _solicitud;
  bool hasSolicitud() => _solicitud != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _producto = snapshotData['Producto'] as DocumentReference?;
    _solicitud = snapshotData['Solicitud'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductoPorAplicacion');

  static Stream<ProductoPorAplicacionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoPorAplicacionRecord.fromSnapshot(s));

  static Future<ProductoPorAplicacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductoPorAplicacionRecord.fromSnapshot(s));

  static ProductoPorAplicacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoPorAplicacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoPorAplicacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoPorAplicacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoPorAplicacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoPorAplicacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoPorAplicacionRecordData({
  DocumentReference? producto,
  DocumentReference? solicitud,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Producto': producto,
      'Solicitud': solicitud,
      'Cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoPorAplicacionRecordDocumentEquality
    implements Equality<ProductoPorAplicacionRecord> {
  const ProductoPorAplicacionRecordDocumentEquality();

  @override
  bool equals(
      ProductoPorAplicacionRecord? e1, ProductoPorAplicacionRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.solicitud == e2?.solicitud &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(ProductoPorAplicacionRecord? e) =>
      const ListEquality().hash([e?.producto, e?.solicitud, e?.cantidad]);

  @override
  bool isValidKey(Object? o) => o is ProductoPorAplicacionRecord;
}
