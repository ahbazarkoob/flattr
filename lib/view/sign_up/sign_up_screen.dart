import 'package:flutter/material.dart';
import 'package:pilot_web_app/constants/text_styles.dart';
import 'package:pilot_web_app/main.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../utils/colors.dart';
import '../../utils/languages/base_model.dart';
import '../../utils/languages/language_en.dart';
import 'sign_up_appbar.dart';
import 'sign_up_bottomwidget.dart';
import 'custom_button.dart';
import 'sign_up_top_widget.dart';

BaseLanguage language = LanguageEn();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String urlLink = 'https://forms.gle/RgZxnbWZL5ib2FSq8';
  bool showConfirmation = false;
  bool showResponse = false;
  bool showResume = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: height,
          width: 480,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: height * 0.65,
              width: 480,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SignUpAppBar(),
                  const SignUpHeroWidget(),
                  showResume
                      ? SizedBox(
                    height: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 39,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, bottom: 15),
                          child: CustomButtonWidget(
                              onPressed: () {
                                setState(() {
                                  showResume = false;
                                  showConfirmation = false;
                                  showResponse = false;
                                });
                              },
                              label: language.resume,
                              width: 153),
                        ),
                        const SizedBox(
                          height: 3,
                        )
                      ],
                    ),
                  )
                      : const SizedBox(),
                  showConfirmation
                      ? OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          side: const MaterialStatePropertyAll(
                              BorderSide(color: Colors.white)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(12)))),
                      child: SizedBox(
                        height: 52,
                        width: 250,
                        child: Center(
                          child: Text(
                            language.yourInterestHasBeenGathered,
                            style: buttonTextStyleLarge.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ))
                      : showResponse
                      ? SizedBox(
                    height: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 23,
                          child: Text(
                            language.didYouSubmitTheForm,
                            style: buttonTextStyleLarge.copyWith(
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, bottom: 15),
                          child: SizedBox(
                            width: 125,
                            child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                  const MaterialStatePropertyAll(
                                      white),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              12)))),
                              onPressed: () {
                                setState(() {
                                  showConfirmation = true;
                                });
                              },
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                    child: Text(
                                      language.yes,
                                      style:
                                      buttonTextStyleLarge.copyWith(
                                          color: const Color(
                                              0xff6D51E9)),
                                    )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showResume = true;
                                  showResponse = false;
                                });
                              },
                              child: Text(
                                language.no,
                                style: buttonTextStyleLarge.copyWith(
                                    color: Colors.white
                                        .withOpacity(0.7)),
                              )),
                        )
                      ],
                    ),
                  )
                      : showResume
                      ? const SizedBox()
                      : SizedBox(
                    height: 125,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 23,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 15),
                          child: CustomButtonWidget(
                              label: language.joinOtherFlatmates,
                              width: 165,
                              onPressed: () {
                                launchUrlString(urlLink);
                                setState(() {
                                  showResponse = true;
                                });
                              }),
                        ),
                        const SizedBox(
                          height: 19,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          const Align(alignment: Alignment.bottomCenter, child: BottomWidget())
        ]),
      ),
    ]);
  }
}