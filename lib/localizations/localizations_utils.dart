import 'package:contacts_app/localizations/app_localization.dart';
import 'package:flutter/material.dart';

class Strings {

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

}