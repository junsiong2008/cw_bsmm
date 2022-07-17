import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';

class Analytics {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  static Future<void> logAnalyticsEvent({
    required String eventName,
    required String eventParam,
  }) async {
    debugPrint("Analytics log event: $eventName");
    await Analytics.analytics.logEvent(
      name: eventName,
      parameters: <String, dynamic>{
        'string': eventParam,
      },
    );
  }
}
