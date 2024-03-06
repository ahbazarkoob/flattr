import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilot_web_app/utils/languages/base_model.dart';
import 'package:pilot_web_app/utils/languages/language_en.dart';
import '../../constants/text_styles.dart';
import '../../utils/data.dart';

BaseLanguage language = LanguageEn();
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, 24.0, 0.0),
      width: 480,
      child: Column(
        children: [
          const Expanded(child: SizedBox()),
          Text(language.profilesToSelectFrom,
              style:
              textStyleLarge.copyWith(color: Colors.white.withOpacity(0.7))),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: carouselList1,
            options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                height: 90,
                aspectRatio: 16/7,
                viewportFraction: 0.29
            ),
          ),
          CarouselSlider(
            items: carouselList2,
            options: CarouselOptions(
              autoPlay: true,
              reverse: true,
              scrollDirection: Axis.horizontal,

                height: 90,
                viewportFraction: 0.29,
                aspectRatio: 16 / 7,),
            )
          ],
        ),
    );
  }
}