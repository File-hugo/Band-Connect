class Banda {
  final int idBanda;
  final String mail;
  final String contrasena;
  final String nombreBanda;
  final int? telefono;
  final List<String> integrantes;
  final List<String> rol;
  final List<String> redesSociales;

  Banda({
    required this.idBanda,
    required this.mail,
    required this.contrasena,
    required this.nombreBanda,
    this.telefono,
    required this.integrantes,
    required this.rol,
    required this.redesSociales,
  });

  factory Banda.fromMap(Map<String, dynamic> m) { /* ... */ }

  Map<String, dynamic> toMap() => { /* ... */ };
}