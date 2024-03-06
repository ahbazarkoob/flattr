import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/text_styles.dart';
import '../../utils/colors.dart';
import '../../utils/languages/base_model.dart';
import '../../utils/languages/language_en.dart';


BaseLanguage language = LanguageEn();

class SignUpAppBar extends StatelessWidget {
  const SignUpAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 480,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 24),
              child: SvgPicture.asset('assets/images/logo.svg'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                    width: 75,
                    child: OutlinedButton(
                        style: const ButtonStyle(
                            side: MaterialStatePropertyAll(
                                BorderSide(color: white))),
                        onPressed: () {},
                        child: Text(language.beta,
                            style: buttonTextStyle)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}