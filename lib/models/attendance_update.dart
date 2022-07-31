class AttendanceUpdate {
  final String editorEmail;
  final DateTime editedDateTime;
  final bool editedPaymentStatus;

  AttendanceUpdate({
    required this.editorEmail,
    required this.editedDateTime,
    required this.editedPaymentStatus,
  });

  Map<String, dynamic> attendanceUpdateToJson() =>
      _attendanceUpdateToJson(this);

  Map<String, dynamic> _attendanceUpdateToJson(
      AttendanceUpdate attendanceUpdate) {
    return <String, dynamic>{
      'editorEmail': attendanceUpdate.editorEmail,
      'editedDateTime': attendanceUpdate.editedDateTime,
      'editedPaymentStatus': attendanceUpdate.editedPaymentStatus,
    };
  }

  factory AttendanceUpdate.fromJson(Map<String, dynamic> json) =>
      _attendanceUpdateFromJson(json);
}

AttendanceUpdate _attendanceUpdateFromJson(Map<String, dynamic> json) {
  return AttendanceUpdate(
    editorEmail: json['editorEmail'] as String,
    editedDateTime: DateTime.fromMillisecondsSinceEpoch(
        json['editedDateTime'].millisecondsSinceEpoch),
    editedPaymentStatus: json['editedPaymentStatus'] as bool,
  );
}
