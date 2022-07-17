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
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0XFF8EC5FC), Color(0XFFE0C3F3)])
                      .createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    '${time.days}',
                    style: kCountdownNumberTextStyle,
                  ),
                ),
                // Text(
                //   '${time.days}',
                //   style: kCountdownNumberTextStyle.copyWith(
                //     color: Colors.white,
                //   ),
                // ),
                const Text(
                  'DAYS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFFFFFB7D), Color(0XFF85FFBD)])
                      .createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    '${time.hours}',
                    style: kCountdownNumberTextStyle,
                  ),
                ),
                // GradientText('${time.min}', colors: const <Color>[
                //   Color(0xFFFFFB7D),
                //   Color(0XFF85FFBD),
                // ]),
                const Text(
                  'HOURS',
                  style: kCountdownSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0XFF8EC5FC), Color(0XFFE0C3F3)])
                      .createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    '${time.min}',
                    style: kCountdownNumberTextStyle,
                  ),
                ),
                // GradientText('${time.min}', colors: const <Color>[
                //   Color(0XFF8EC5FC),
                //   Color(0XFFE0C3F3),
                // ]),
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

                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0XFF8BC6EC), Color(0XFF9599E2)])
                      .createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    '${time.sec}',
                    style: kCountdownNumberTextStyle,
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
