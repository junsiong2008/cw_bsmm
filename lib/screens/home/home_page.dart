import 'package:cw_bsmm/components/ui/countdown_group.dart';
import 'package:cw_bsmm/components/ui/loading_animation.dart';
import 'package:cw_bsmm/components/ui/registration_failed.dart';
import 'package:cw_bsmm/components/ui/registration_successful.dart';
import 'package:cw_bsmm/providers/registration_form_provider.dart';
import 'package:cw_bsmm/providers/registration_state_provider.dart';
import 'package:cw_bsmm/components/ui/registration_form.dart';
import 'package:cw_bsmm/services/analytics.dart';
import 'package:cw_bsmm/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  void closeModalBottomSheet(BuildContext context) {
    var registrationStateProvider = Provider.of<RegistrationStateProvider>(
      context,
      listen: false,
    );
    var registrationFormProvider = Provider.of<RegistrationFormProvider>(
      context,
      listen: false,
    );
    Navigator.of(context).pop();
    registrationFormProvider.resetForm();
    registrationStateProvider.resetState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/summer_night.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '夏夜',
                    style: kMainTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 16.0,
                    runSpacing: 8.0,
                    children: [
                      Image.asset(
                        'assets/images/bsmm_logo.png',
                        height: 50,
                      ),
                      const Text(
                        '55th Enrolment Ceremony Farewell and Welcome Gathering 2022',
                        textAlign: TextAlign.center,
                        style: kMainSubtitleTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  // Wrap(
                  //   spacing: 8.0,
                  //   runSpacing: 4.0,
                  //   alignment: WrapAlignment.center,
                  //   crossAxisAlignment: WrapCrossAlignment.center,
                  Column(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        spacing: 4.0,
                        runSpacing: 8.0,
                        children: const [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'SMJK Chan Wa Hall',
                            style: kVenueDateTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: const [
                          Icon(
                            Icons.schedule,
                            color: Colors.white,
                          ),
                          Text(
                            '20th August 2022',
                            style: kVenueDateTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '7.30am - 10.00am, 3.30pm - 8.30pm',
                            style: kVenueDateTextStyle,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CountdownGroup(
                    millisecondsToDate: eventDatetime.millisecondsSinceEpoch,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  DateTime.now().isBefore(registrationClosedDate)
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            minimumSize: const Size(120, 48),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () async {
                            await Analytics.logAnalyticsEvent(
                              eventName: 'display_registration_form',
                              eventParam: 'Display registration form',
                            );
                            showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                              context: context,
                              isDismissible: false,
                              builder: (BuildContext context) {
                                return buildModalBottomSheet(context);
                              },
                            );
                          })
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            minimumSize: const Size(120, 48),
                          ),
                          onPressed: null,
                          child: const Text(
                            'Registration Closed',
                            style: TextStyle(
                              color: Colors.white60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildModalBottomSheet(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Registration Form',
                    style: kModalSheetTitleTextStyle,
                  ),
                  Consumer<RegistrationStateProvider>(
                    builder: ((context, value, child) {
                      return IconButton(
                        icon: Icon(
                          Icons.close,
                          color: value.loading ? Colors.black26 : kPrimaryColor,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: value.loading
                            ? null
                            : () => closeModalBottomSheet(context),
                      );
                    }),
                  )
                ],
              ),
            ),
            Consumer<RegistrationStateProvider>(
              builder: ((context, value, child) {
                if (value.loading) {
                  return const LoadingAnimation();
                } else {
                  if (value.success) {
                    Analytics.logAnalyticsEvent(
                      eventName: 'registration_success',
                      eventParam: 'Registration success',
                    );
                    return const RegistrationSuccessful();
                  } else {
                    if (value.fail) {
                      Analytics.logAnalyticsEvent(
                        eventName: 'registration_failed',
                        eventParam: 'Registration failed: ${value.errorString}',
                      );
                      return RegistrationFailed(
                        errorString: value.errorString,
                      );
                    } else {
                      return const RegistrationForm();
                    }
                  }
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
