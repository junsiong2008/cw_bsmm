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
        json['createdOn'].millisecondsSinceEpoch),
    isPaid: json['isPaid'] as bool,
  );
}
