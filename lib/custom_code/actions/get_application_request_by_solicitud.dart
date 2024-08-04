// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getApplicationRequestBySolicitud(
    DocumentReference? prmSolicitud) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> results = [];

  try {
    // Obtener detalles de productos por solicitud
    QuerySnapshot productPorAplicacionSnapshot = await firestore
        .collection('ProductoPorAplicacion')
        .where('Solicitud', isEqualTo: prmSolicitud)
        .get();

    for (var productoPorAplicacionDoc in productPorAplicacionSnapshot.docs) {
      // Obtener datos del producto
      DocumentSnapshot productoDoc =
          await productoPorAplicacionDoc['Producto'].get();
      Map<String, dynamic> productoData =
          productoDoc.data() as Map<String, dynamic>;

      // Combinar los datos
      results.add({
        'productoReference':
            productoPorAplicacionDoc['Producto'].id, // Solo el ID del producto
        'nombre': productoData['Nombre'],
        'descripcion': productoData['Descripcion'],
        'imagen': productoData['Imagen'],
        'color': productoData['Color'],
        'cantidad': productoPorAplicacionDoc['Cantidad']
      });
    }
  } catch (e) {
    print("Error fetching products by solicitud: $e");
  }

  return results; // Retorna la lista de mapas como JSON
}
