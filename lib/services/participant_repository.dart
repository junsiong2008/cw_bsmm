import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_bsmm/models/participant.dart';

class ParticipantRepository {
  // TODO: Changes

  //  final FirebaseFirestore db = FirebaseFirestore.instance;
  // DEV
  final FirebaseFirestore db = FirebaseFirestore.instance;
  ParticipantRepository() {
    db.settings = const Settings(
      host: 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false,
    );
  }

  Future<DocumentReference> addParticipant(Participant participant) {
    return db.collection('participants').add(participant.toJson());
  }
}
