import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pilot_web_app/constants/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../main.dart';
import '../utils/colors.dart';
import '../utils/data.dart';
import '../utils/languages/base_model.dart';
import '../utils/languages/language_en.dart';

BaseLanguage language = LanguageEn();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String urlLink = 'https://www.google.com/';
  bool showConfirmation = false;
  bool showResponse = false;
  bool showResume = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg.webp'))),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 24),
            child: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/logo.png',
                )),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                    style: const ButtonStyle(
                        side:
                            MaterialStatePropertyAll(BorderSide(color: white))),
                    onPressed: () {},
                    child: Text(language.beta, style: buttonTextStyle)),
              ],
            ),
          ),
        ),
        body: Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 72,
                ),
                const TopWidget(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  language.curatedCommunityOfSelectively,
                  style: textStyleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                showResume
                    ? OutlinedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.blueGrey),
                            backgroundColor:
                                const MaterialStatePropertyAll(white),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {
                          setState(() {
                            showResume = false;
                            showConfirmation = false;
                            showResponse = false;
                          });
                        },
                        child: SizedBox(
                          height: 52,
                          width: 153,
                          child: Center(
                            child: Text(language.resume,
                                style: textStyleLarge.copyWith(
                                    color: buttonTextColor,
                                    fontWeight: FontWeight.w800)),
                          ),
                        ),
                      )
                    : const SizedBox(),
                showConfirmation
                    ? OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        child: SizedBox(
                          height: 52,
                          width: 250,
                          child: Center(
                            child: Text(
                              language.yourInterestHasBeenGathered,
                              style: textStyleLarge.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ))
                    : showResponse
                        ? Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  language.didYouSubmitTheForm,
                                  style: textStyleLarge.copyWith(
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 120,
                                  child: OutlinedButton(
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
                                        height: 52,
                                        child: Center(
                                          child: Text(
                                            language.yes,
                                            style: textStyleLarge.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff6D51E9)),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showResume = true;
                                        showResponse = false;
                                      });
                                    },
                                    child: Text(
                                      language.no,
                                      style: textStyleLarge,
                                    )),
                              )
                            ],
                          )
                        : showResume
                            ? const SizedBox()
                            : OutlinedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.blueGrey),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(white),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)))),
                                onPressed: () {
                                  launchUrlString(urlLink);
                                  setState(() {
                                    showResponse = true;
                                  });
                                },
                                child: SizedBox(
                                  height: 52,
                                  width: 170,
                                  child: Center(
                                    child: Text(language.joinOtherFlatmates,
                                        style: textStyleLarge.copyWith(
                                            color: buttonTextColor,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                ),
                              ),
              ],
            ),
          ),
          const Align(alignment: Alignment.bottomCenter, child: BottomWidget())
        ]),
      ),
    ]);
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: language.findingYour, style: textStyleExtraLarge),
      TextSpan(text: language.flatmate, style: handwritingTextStyle),
      const TextSpan(text: ",\n", style: textStyleExtraLarge),
      TextSpan(
        text: language.hasNeverBeenSoFun,
        style: textStyleExtraLarge,
      )
    ]));
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(language.profilesToSelectFrom,
            style: textStyleLarge.copyWith(color: Colors.amber)),
        const SizedBox(
          height: 3,
        ),
        CarouselSlider(
          items: carouselList1,
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            height: 90,
            aspectRatio: 16 / 7,
            viewportFraction: 0.28,
          ),
        ),
        CarouselSlider(
          items: carouselList2,
          options: CarouselOptions(
              autoPlay: true,
              reverse: true,
              scrollDirection: Axis.horizontal,
              height: 90,
              aspectRatio: 16 / 7,
              viewportFraction: 0.28),
        )
      ],
    );
  }
}
