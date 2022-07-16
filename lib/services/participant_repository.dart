import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_bsmm/models/participant.dart';

class ParticipantRepository {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  Future<DocumentReference> addParticipant(Participant participant) {
    return db.collection('participants').add(participant.toJson());
  }
}
