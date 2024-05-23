import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dummywebsite/model/parking_slot.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Get a stream of parking slots
  Stream<List<ParkingSlot>> getParkingSlots() {
    return _db.collection('parkingSlots').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => ParkingSlot.fromJson(doc.data())).toList());
  }

  // Add a new parking slot
  Future<void> addParkingSlot(ParkingSlot slot) async {
    await _db.collection('parkingSlots').add(slot.toJson());
  }

  // Update a parking slot
  Future<void> updateParkingSlot(ParkingSlot slot) async {
    await _db.collection('parkingSlots').doc(slot.id).update(slot.toJson());
  }

  // Delete a parking slot
  Future<void> deleteParkingSlot(String id) async {
    await _db.collection('parkingSlots').doc(id).delete();
  }
}
