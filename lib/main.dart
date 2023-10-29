import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/provider/providers.dart';
import 'core/routes/nav.dart';
import 'core/theme/themes/theme.dart';
import 'features/navigation/presentation/pages/navigation_page.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiBlocProvider(providers: providers, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, widget) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        child: widget!,
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
          dialogTheme: DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: AppTheme.of(context).secondaryBackground,
          ),
          brightness: Brightness.dark),
      themeMode: _themeMode,
      home: const NavigationPage(),
    );
  }
}
