import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:contacts_app/screens/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts_app/cubit/home_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_test.dart';

void main() {
  late HomeCubit homeCubit;

  setUpAll(() async {
    await setUpTestHive();
    await Hive.openBox('users');
  });

  setUp(() {
    homeCubit = HomeCubit();
  });

  tearDown(() {
    homeCubit.close();
  });

  tearDownAll(() async {
    await tearDownTestHive();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider.value(
        value: homeCubit,
        child: LoginPage(),
      ),
    );
  }

  group('LoginPage Widget Tests', () {
    testWidgets('Should validate form and trigger login when fields are filled correctly', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      await tester.enterText(find.byType(TextFormField).first, 'test@email.com');
      await tester.enterText(find.byType(TextFormField).last, 'password123');
      
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.text('Please enter your email'), findsNothing);
      expect(find.text('Please enter your password'), findsNothing);

      final formKey = tester.widget<Form>(find.byType(Form)).key as GlobalKey<FormState>;
      expect(formKey.currentState!.validate(), isTrue);
    });
  });
}