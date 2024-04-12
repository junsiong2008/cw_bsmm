import 'package:cw_bsmm/firebase_options.dart';
import 'package:cw_bsmm/providers/registration_form_provider.dart';
import 'package:cw_bsmm/providers/registration_state_provider.dart';
import 'package:cw_bsmm/screens/home/home_page.dart';
import 'package:cw_bsmm/shared/constants.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cw_bsmm/services/analytics.dart';
import 'package:cw_bsmm/auth/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
      // webRecaptchaSiteKey: webRecaptchaSiteKey,
      webProvider: ReCaptchaV3Provider(webRecaptchaSiteKey));

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationStateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegistrationFormProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: <NavigatorObserver>[Analytics.observer],
      title: 'BSMM 55th Enrolment Ceremony',
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
