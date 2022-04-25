import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:investlink_mobile/config/theme.dart';
import 'package:investlink_mobile/core/sevices/di_locator.dart' as di_locator;
import 'package:investlink_mobile/features/counter/counter.dart';
import 'package:investlink_mobile/features/language_logic/data/models/language.dart';
import 'package:investlink_mobile/features/language_logic/presentation/cubit/local_language_cubit.dart';
import 'package:investlink_mobile/l10n/l10n.dart';
import 'package:package_info_plus/package_info_plus.dart';

late PackageInfo packageInfo;

Future<void> mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// информация о дивайсе
  packageInfo = await PackageInfo.fromPlatform();

  /// установка ориентации
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// инициализация DI
  di_locator.initLocator();
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalLanguageCubit>(
          create: (context) => LocalLanguageCubit()
            ..changeLocalApp(
              Languages.languages[1],
            ),
        ),
      ],
      child: BlocBuilder<LocalLanguageCubit, LocalLanguageState>(
        builder: (context, localLanguageState) {
          if (localLanguageState is LanguageLoaded) {
            return MaterialApp(
              theme: AppTheme.defaultTheme,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              locale: localLanguageState.locale,
              supportedLocales: AppLocalizations.supportedLocales,
              home: const CounterPage(),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
