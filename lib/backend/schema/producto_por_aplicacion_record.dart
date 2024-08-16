import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoPorAplicacionRecord extends FirestoreRecord {
  ProductoPorAplicacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "SubTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _producto = snapshotData['Producto'] as DocumentReference?;
    _solicitud = snapshotData['Solicitud'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _subTotal = castToType<double>(snapshotData['SubTotal']);
    _color = snapshotData['Color'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
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
  String? nombre,
  String? descripcion,
  double? precio,
  double? subTotal,
  String? color,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Producto': producto,
      'Solicitud': solicitud,
      'Cantidad': cantidad,
      'Nombre': nombre,
      'Descripcion': descripcion,
      'Precio': precio,
      'SubTotal': subTotal,
      'Color': color,
      'Imagen': imagen,
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
        e1?.cantidad == e2?.cantidad &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.subTotal == e2?.subTotal &&
        e1?.color == e2?.color &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(ProductoPorAplicacionRecord? e) => const ListEquality().hash([
        e?.producto,
        e?.solicitud,
        e?.cantidad,
        e?.nombre,
        e?.descripcion,
        e?.precio,
        e?.subTotal,
        e?.color,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoPorAplicacionRecord;
}
