import 'package:cw_bsmm/models/participant.dart';
import 'package:cw_bsmm/services/participant_repository.dart';
import 'package:flutter/material.dart';

class RegistrationStateProvider extends ChangeNotifier {
  bool loading = false;
  bool success = false;
  bool fail = false;
  String? errorString;

  Future<void> registerUser(Participant participant) async {
    final ParticipantRepository repository = ParticipantRepository();
    loading = true;
    notifyListeners();

    await repository.addParticipant(participant).then((value) {
      loading = false;
      success = true;
      fail = false;
    }).catchError((error, stackTrace) {
      loading = false;
      success = false;
      fail = true;
      errorString = error.toString();
    });

    // await Future.delayed(Duration(seconds: 5), () {
    //   loading = false;
    //   success = true;
    //   fail = false;
    // });

    notifyListeners();
  }

  void resetState() {
    loading = false;
    success = false;
    fail = false;
    notifyListeners();
  }
}
