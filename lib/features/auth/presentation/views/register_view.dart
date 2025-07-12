import 'package:flutter/material.dart'
    show Scaffold, StatelessWidget, immutable;
import 'widgets/register/register_view_body.dart' show RegisterViewBody;

@immutable
final class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  @override
  Scaffold build(_) => const Scaffold(body: RegisterViewBody());
}
