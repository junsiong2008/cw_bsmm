import 'package:cw_bsmm/components/ui/gradient_text.dart';
import 'package:cw_bsmm/shared/constants.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter/material.dart';

class CountdownGroup extends StatelessWidget {
  const CountdownGroup({
    Key? key,
    required this.millisecondsToDate,
  }) : super(key: key);

  final int millisecondsToDate;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: millisecondsToDate,
      widgetBuilder: (BuildContext context, CurrentRemainingTime? time) {
        if (time == null) {
          return const SizedBox();
        }
        return Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 8.0,
          spacing: 16,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // GradientText(
                //   '${time.days}',
                //   style: kCountdownNumberTextStyle,
                //   gradient: const LinearGradient(colors: [
                //     Color(0XFFff930f),
                //     Color(0XFFfff95b),
                //   ]),
                // ),
                Text(
                  '${time.days}',
                  style: kCountdownNumberTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'DAYS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // GradientText(
                //   '${time.hours}',
                //   style: kCountdownNumberTextStyle,
                //   gradient: const LinearGradient(colors: [
                //     Color(0xfffffb7d),
                //     Color(0xff85FFBD),
                //   ]),
                // ),
                Text(
                  '${time.hours}',
                  style: kCountdownNumberTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'HOURS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // GradientText(
                //   '${time.min}',
                //   style: kCountdownNumberTextStyle,
                //   gradient: const LinearGradient(colors: [
                //     Color(0XFF8EC5FC),
                //     Color(0XFFE0C3F3),
                //   ]),
                // ),
                Text(
                  '${time.min}',
                  style: kCountdownNumberTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'MINS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // GradientText(
                //   '${time.sec}',
                //   style: kCountdownNumberTextStyle,
                //   gradient: const LinearGradient(colors: [
                //     Color(0XFF8BC6EC),
                //     Color(0XFF9599E2),
                //   ]),
                // ),
                Text(
                  '${time.sec}',
                  style: kCountdownNumberTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'SECS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
