import 'package:flutter/material.dart'
    show Scaffold, StatelessWidget, immutable;
import 'widgets/reset_password/reset_password_view_body.dart'
    show ResetPasswordViewBody;

@immutable
final class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  @override
  Scaffold build(_) => const Scaffold(body: ResetPasswordViewBody());
}
