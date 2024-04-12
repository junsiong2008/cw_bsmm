import 'package:cw_bsmm/models/payment_update.dart';
import 'package:cw_bsmm/models/attendance_update.dart';

class Participant {
  String englishName;
  String? chineseName;
  String icNumber;
  String phoneNumber;
  String emailAddress;
  bool isHalal;
  bool isVegetarian;
  String? allergic;
  String studentStatus;
  String? secondarySchool;
  String? unit;
  DateTime datetimeCreated;
  bool isPaid = false;
  bool isAttended = false;
  List<PaymentUpdate>? paymentUpdates;
  List<AttendanceUpdate>? attendanceUpdates;

  Participant({
    required this.englishName,
    required this.icNumber,
    required this.phoneNumber,
    required this.emailAddress,
    required this.isHalal,
    required this.isVegetarian,
    required this.studentStatus,
    required this.datetimeCreated,
    this.chineseName,
    this.allergic,
    this.secondarySchool,
    this.unit,
    this.isPaid = false,
    this.isAttended = false,
    this.paymentUpdates,
    this.attendanceUpdates,
  });

  Map<String, dynamic> toJson() => _participantToJson(this);

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _participantFromJson(json);

  Map<String, dynamic> _participantToJson(Participant participant) =>
      <String, dynamic>{
        'englishName': participant.englishName,
        'icNumber': participant.icNumber,
        'phoneNumber': participant.phoneNumber,
        'emailAddress': participant.emailAddress,
        'isHalal': participant.isHalal,
        'isVegetarian': participant.isVegetarian,
        'studentStatus': participant.studentStatus,
        'chineseName': participant.chineseName,
        'allergic': participant.allergic,
        'secondarySchool': participant.secondarySchool,
        'unit': participant.unit,
        'datetimeCreated': participant.datetimeCreated,
        'isPaid': participant.isPaid,
        'isAttended': participant.isAttended,
        'paymentUpdates': participant.paymentUpdates
            ?.map((update) => update.paymentUpdateToJson())
            .toList(),
        'attendanceUpdates': participant.attendanceUpdates
            ?.map((update) => update.attendanceUpdateToJson())
            .toList(),
      };
}

Participant _participantFromJson(Map<String, dynamic> json) {
  return Participant(
    englishName: json['englishName'] as String,
    icNumber: json['icNumber'] as String,
    phoneNumber: json['phoneNumber'] as String,
    emailAddress: json['emailAddress'] as String,
    isHalal: json['isHalal'] as bool,
    isVegetarian: json['isVegetarian'] as bool,
    studentStatus: json['studentStatus'] as String,
    chineseName: json['chineseName'] as String?,
    allergic: json['allergic'] as String?,
    secondarySchool: json['secondarySchool'] as String?,
    unit: json['unit'] as String?,
    datetimeCreated: DateTime.fromMillisecondsSinceEpoch(
        json['datetimeCreated'].millisecondsSinceEpoch),
    isPaid: json['isPaid'] as bool,
    paymentUpdates: json['paymentUpdates'] == null
        ? null
        : json['paymentUpdates']
            .map((data) => PaymentUpdate.fromJson(data))
            .toList() as List<PaymentUpdate>?,
    attendanceUpdates: json['attendanceUpdates'] == null
        ? null
        : json['attendanceUpdates']
            .map((data) => AttendanceUpdate.fromJson(data))
            .toList() as List<AttendanceUpdate>?,
  );
}
