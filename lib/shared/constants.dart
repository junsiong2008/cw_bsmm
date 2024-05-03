import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF481E14);

const TextStyle kCountdownSubtitleTextStyle = TextStyle(
  color: Colors.white54,
  fontSize: 10,
);

const TextStyle kMainTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 48,
  letterSpacing: 16,
  fontFamily: 'NotoSansSC',
);

const TextStyle kMainSubtitleTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
  height: 1.5,
  fontFamily: 'Poppins',
);

const TextStyle kVenueDateTextStyle = TextStyle(
  color: Colors.white,
);

const TextStyle kTimeTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 12.0,
);

const TextStyle kModalSheetTitleTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 18,
  fontFamily: 'Poppins',
);

const TextStyle kRegistrationStatusTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 24,
  color: kPrimaryColor,
);

const TextStyle kFormFieldLabelTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 12,
);

const TextStyle kCountdownNumberTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

const List<String> kSchoolList = [
  'SMK Bukit Mewah',
  'SMK Samtet, Ipoh',
  'SMK Mantin',
  'SMK Seri Keledang, Perak',
  'SMK Aminuddin Baki Chemor, Perak',
  'SMK Puteri',
  'SMK Tunku Ampuan Najihah',
  'SMK Tunku Durah',
  'SMJK Chan Wa',
  'SMJK Chan Wa (II)',
  'SMK KGV',
  'SMK DMS, Nilai',
  'SMK Gajah Berang, Melaka',
  'SMK Ketholik, Melaka',
  'SMK St. Paul',
  'SMK ACS',
  'SMK Chung Hua, Seremban',
  'SMK Chung Hua, KL',
  'SMJK Yu Hua, Kajang',
  'Other',
];

const List<String> kChanWaUnit = [
  'Bulan Sabit Merah Malaysia',
  'Gendang 24',
  'Goshin-Ryu Karate',
  'Kadet Angkatan Sekolah Pertahanan Awam',
  'Kadet Pengangkutan Jalan',
  'Kadet Polis',
  'Kadet Remaja Sekolah',
  'Kadet Tentera Barat-PKBM',
  'Pancaragam',
  'Pandu Puteri',
  'Pengakap',
  'Taekwando',
  'Wushu',
  'Persatuan Agama Buddha',
  'Persatuan Bahasa Cina',
  'Persatuan Bahasa Inggeris',
  'Persatuan Bahasa Malaysia',
  'Persatuan Kemahiran Hidup / ERT / Rekacipta',
  'Persatuan Pendidikan Seni Visual',
  'Persatuan Rukun Negara / Geografi dan Sejarah',
  'Persatuan Sains, Matematik dan Astronomi',
  'Kelab Drama',
  'Kelab Fotografi / Video',
  'Kelab Harmonika',
  'Kelab Interact',
  'Kelab Kerjaya',
  'Kelab Kesenian dan Kebudayaan (Tarian Naga / Singa)',
  'Kelab Koir',
  'Kelab Komputer',
  'Kelab Koperasi',
  'Kelab Pencipta Alam',
  'Kelab Robotik',
  'Kelab Setem / Filateli',
  'Kelab SPBT - Skim Pinjaman Buku Teks',
  'Kelab Tarian',
  'Other',
];

const List<String> kChanWaExUnit = [
  'Bulan Sabit Merah Malaysia',
  'Gendang 24',
  'Goshin-Ryu Karate',
  'Kadet Angkatan Sekolah Pertahanan Awam',
  'Kadet Pengangkutan Jalan',
  'Kadet Polis',
  'Kadet Remaja Sekolah',
  'Kadet Tentera Barat-PKBM',
  'Pancaragam',
  'Pandu Puteri',
  'Pengakap',
  'Taekwando',
  'Wushu',
  'Other',
];

const List<String> kChanWaClasses = [
  'PA',
  '1A',
  '1B',
  '1C',
  '1D',
  '1E',
  '1G',
  '1H',
  '1I',
  '2A',
  '2B',
  '2C',
  '2D',
  '2E',
  '2G',
  '2H',
  '2I',
  '3A',
  '3B',
  '3C',
  '3D',
  '3E',
  '3G',
  '3H',
  '3I',
  '4S1',
  '4S2',
  '4S3',
  '4E',
  '4E2',
  '4A',
  '4A1',
  '4A2',
  '4A3',
  '5S1',
  '5S2',
  '5S3',
  '5E',
  '5E2',
  '5A',
  '5A1',
  '5A2',
  '5A3',
];

DateTime eventDatetime = DateTime(2024, 5, 11, 15, 00);

DateTime registrationClosedDate = DateTime(2024, 5, 4);
