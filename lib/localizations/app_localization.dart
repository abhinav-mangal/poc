import 'dart:async';

import 'package:contacts_app/l10n/dart/messages_all_locales.dart';
import 'package:contacts_app/localizations/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class AppLocalizations with StringResources {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
    locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }
}