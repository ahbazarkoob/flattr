import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../constants/text_styles.dart';
import '../../utils/languages/base_model.dart';
import '../../utils/languages/language_en.dart';

// 7CF0B8
BaseLanguage language = LanguageEn();

class SignUpHeroWidget extends StatelessWidget {
  const SignUpHeroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 36,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(language.findingYour,
                style: textStyleExtraLarge),
            SizedBox(
              width: 169,
              height: 40,
              child: AnimatedTextKit(
                  repeatForever: true,
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                  pause: const Duration(seconds: 3),
                  animatedTexts: [
                    TyperAnimatedText(
                      speed: Duration(
                        milliseconds: 0
                      ),
                      ""
                    ),
                    TyperAnimatedText(
                      speed: const Duration(
                        milliseconds: 100
                      ),
                        language.flatmate,
                        textStyle: handwritingTextStyle),
                    TyperAnimatedText(
                        speed: const Duration(
                            milliseconds: 100
                        ),
                        language.funmate,
                        textStyle: handwritingTextStyle.copyWith(color: Color(0xffF0BD5A))),
                    TyperAnimatedText(
                        speed: const Duration(
                            milliseconds: 100
                        ),
                        language.workmate,
                        textStyle: handwritingTextStyle.copyWith(
                            color: Color(0xffDB00FF)
                        ))
                  ]),
            ),
            // Text(
            //   ',',
            //   style: textStyleExtraLarge,
            // )
          ],
        ),
        Text(
          language.hasNeverBeenSoFun,
          style: textStyleExtraLarge,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          language.curatedCommunityOfSelectively,
          style: textStyleLarge.copyWith(
              color: Colors.white.withOpacity(0.7)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}