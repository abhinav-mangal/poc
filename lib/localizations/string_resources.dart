import 'package:intl/intl.dart';

mixin StringResources {
  String get title {
    return Intl.message('Flutter Demo Home Page',
        name: 'title', desc: 'The application title');
  }
}
