import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class NoteController extends GetxController {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> get notesStream => _db.collection('notes').snapshots();

  Future<void> addNote(String title, String description) async {
    await _db.collection('notes').add({"title": title, "description": description});
  }
}