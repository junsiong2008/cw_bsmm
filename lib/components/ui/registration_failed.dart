import 'package:cw_bsmm/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegistrationFailed extends StatelessWidget {
  final String? errorString;
  const RegistrationFailed({
    Key? key,
    this.errorString,
  }) : super(key: key);

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
              'assets/animations/unapproved-cross.json',
              repeat: false,
              height: 64,
            ),
            Column(
              children: [
                const Text(
                  'Something Went Wrong',
                  textAlign: TextAlign.center,
                  style: kRegistrationStatusTextStyle,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  '$errorString\nPlease try again.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
