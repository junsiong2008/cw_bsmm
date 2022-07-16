import 'package:cw_bsmm/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegistrationSuccessful extends StatelessWidget {
  const RegistrationSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 64.0,
        ),
        child: Column(
          children: <Widget>[
            Lottie.asset(
              'assets/animations/success.json',
              repeat: false,
              height: 64,
            ),
            Column(
              children: const [
                Text(
                  'Registration Successful',
                  textAlign: TextAlign.center,
                  style: kRegistrationStatusTextStyle,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'You will receive your e-ticket in your email after we\'ve processed your payment.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
