import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_app/src/providers/entry_provider.dart';
import 'package:journal_app/src/screens/home.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EntryProvider(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.pinkAccent,
          primaryColor: Colors.black,
          textTheme: GoogleFonts.robotoMonoTextTheme(),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
