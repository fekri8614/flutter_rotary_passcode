import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rotary_passcode/passcode_input_view.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: PasscodeInputView(
        expectedCode: '6942',
        onSuccess: () {
          // Handle valid passcode here
        },
        onError: () {
          // Handle invalid passcode here
        },
      ),
    );
  }
}
