import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final FirebaseDatabase db = FirebaseDatabase.instance;

  late final regenRef = db.ref("regens");

  late final projectRef = db.ref("projects");
  late final methodRef = db.ref("methods");

  Future<DatabaseEvent> getProjects() async {
    return projectRef.once(DatabaseEventType.value);
  }

  Future<DatabaseEvent> getRegen(String wallet) {
    return regenRef.child(wallet).once(DatabaseEventType.value);
  }

  Future<dynamic> setRegen(Map<String, dynamic> data, String wallet) {
    return regenRef.update(data);
  }
}
