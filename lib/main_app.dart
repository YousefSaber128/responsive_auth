import 'package:flutter/material.dart';
import 'core/helpers/routes.dart' show AppRouter;
import 'core/utils/themes/theme_config.dart' show ThemeConfig;
import 'features/auth/presentation/views/sign_in_view.dart' show SignInView;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
    home: const SignInView(),
    onGenerateRoute: AppRouter.onGenerate(),
    theme: const ThemeConfig().light,
    darkTheme: const ThemeConfig().dark,
    debugShowCheckedModeBanner: false,
  );
}
