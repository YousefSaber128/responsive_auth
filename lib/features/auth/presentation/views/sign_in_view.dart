import 'package:flutter/material.dart'
    show Scaffold, StatelessWidget, immutable;
import 'widgets/sign_in/sign_in_view_body.dart' show SignInViewBody;

@immutable
final class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Scaffold build(_) => const Scaffold(body: SignInViewBody());
}
