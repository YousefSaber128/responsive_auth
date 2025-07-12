import 'package:flutter/material.dart'
    show
        BuildContext,
        MaterialPageRoute,
        Navigator,
        NavigatorState,
        Route,
        RouteSettings,
        Widget,
        immutable;

import '../../features/auth/presentation/views/register_view.dart'
    show RegisterView;
import '../../features/auth/presentation/views/reset_password_view.dart'
    show ResetPasswordView;
import '../../features/auth/presentation/views/sign_in_view.dart'
    show SignInView;

@immutable
sealed class _Routes {
  const _Routes();

  static const String _signInView = '/sign-in';
  static const String _registerView = 'register';
  static const String _resetPasswordView = 'reset-password';
}

@immutable
sealed class _MapRoutes {
  const _MapRoutes();

  static final Map<String, Widget> _signInRoutes = <String, Widget>{
    _Routes._signInView: const SignInView(),
    _Routes._registerView: const RegisterView(),
    _Routes._resetPasswordView: const ResetPasswordView(),
  };
}

@immutable
sealed class AppRouter {
  const AppRouter();

  static NavigatorState _instance(final BuildContext context) =>
      Navigator.of(context);

  static Future<T?> _pushNamed<T extends Object?>(
    final BuildContext context,
    final String routeName, {
    final Object? arguments,
  }) => _instance(context).pushNamed<T>(routeName, arguments: arguments);

  static Future<T?>
  _pushReplacementNamed<T extends Object?, TO extends Object?>(
    final BuildContext context,
    final String routeName, {
    final TO? result,

    final Object? arguments,
  }) => _instance(context).pushReplacementNamed<T, TO>(
    routeName,
    result: result,
    arguments: arguments,
  );

  static Future<Object?> signIn(final BuildContext context) =>
      _pushReplacementNamed(context, _Routes._signInView);

  static Future<Object?> register(final BuildContext context) =>
      _pushReplacementNamed(context, _Routes._registerView);

  static Future<Object?> resetPassword(final BuildContext context) =>
      _pushNamed(context, _Routes._resetPasswordView);

  static Route<dynamic>? Function(RouteSettings)? onGenerate() =>
      (final settings) => MaterialPageRoute(
        builder: (_) => _MapRoutes._signInRoutes[settings.name]!,
        settings: settings,
      );
}
