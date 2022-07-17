import 'package:cw_bsmm/firebase_options.dart';
import 'package:cw_bsmm/providers/registration_form_provider.dart';
import 'package:cw_bsmm/providers/registration_state_provider.dart';
import 'package:cw_bsmm/screens/home/home_page.dart';
import 'package:cw_bsmm/shared/constants.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cw_bsmm/auth/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: webRecaptchaSiteKey,
  );

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
  const MyApp({Key? key}) : super(key: key);
  // TODO: Remove this later
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: <NavigatorObserver>[observer],
      // navigatorObservers: <NavigatorObserver>[Analytics.observer],
      title: 'BSMM 55th Enrollment Ceremony',
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
        ),
      ),
      // home: const HomePage(),
      home: HomePage(
        analytics: analytics,
        observer: observer,
      ),
    );
  }
}
