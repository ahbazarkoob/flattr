import 'package:flutter/material.dart';

abstract class BaseLanguage {
  static BaseLanguage? of(BuildContext context) =>
      Localizations.of<BaseLanguage>(context, BaseLanguage);
  String get appName;
  String get beta;
  String get findingYour;
  String get flatmate;
  String get funmate;
  String get workmate;
  String get hasNeverBeenSoFun;
  String get curatedCommunityOfSelectively;
  String get joinOtherFlatmates;
  String get profilesToSelectFrom;
  String get yourInterestHasBeenGathered;
  String get didYouSubmitTheForm;
  String get yes;
  String get no;
  String get resume;
}
