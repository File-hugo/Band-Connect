import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

/// Obtener todas las bandas
Future<List<Map<String, dynamic>>> getBandas() async {
  List<Map<String, dynamic>> bandas = [];
  CollectionReference collectionReferenceBandas = db.collection('BANDAS');
  QuerySnapshot queryBandas = await collectionReferenceBandas.get();

  for (var doc in queryBandas.docs) {
    bandas.add(doc.data() as Map<String, dynamic>);
  }
  return bandas;
}

/// Obtener todos los locales
Future<List<Map<String, dynamic>>> getLocales() async {
  List<Map<String, dynamic>> locales = [];
  CollectionReference collectionReferenceLocales = db.collection('LOCALES');
  QuerySnapshot queryLocales = await collectionReferenceLocales.get();

  for (var doc in queryLocales.docs) {
    locales.add(doc.data() as Map<String, dynamic>);
  }
  return locales;
}

/// Obtener todos los usuarios
Future<List<Map<String, dynamic>>> getUsuarios() async {
  List<Map<String, dynamic>> usuarios = [];
  CollectionReference collectionReferenceUsuarios = db.collection('USUARIOS');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();

  for (var doc in queryUsuarios.docs) {
    usuarios.add(doc.data() as Map<String, dynamic>);
  }
  return usuarios;
}

/// 🔥 Leer una banda específica por ID
Future<Map<String, dynamic>?> leerBanda(String id) async {
  try {
    DocumentSnapshot doc =
        await db.collection("BANDAS").doc(id).get();

    if (doc.exists) {
      return doc.data() as Map<String, dynamic>;
    } else {
      print("❌ La banda con ID '$id' no existe.");
      return null;
    }
  } catch (e) {
    print("Error al leer banda: $e");
    return null;
  }
}
