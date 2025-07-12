import 'package:flutter/material.dart'
    show
        AutovalidateMode,
        BuildContext,
        Column,
        Form,
        FormState,
        GlobalKey,
        StatelessWidget,
        TextEditingController,
        TextInputAction,
        Widget,
        immutable;

import '../auth_button.dart';
import '../email_text_field.dart' show EmailTextField;
import '../password_text_field.dart' show PasswordTextField;
import 'forgot_password.dart' show ForgotPassword;

@immutable
final class SignInForm extends StatelessWidget {
  const SignInForm({super.key});
  @override
  Form build(final BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: Column(
        children: <Widget>[
          const EmailTextField(textInputAction: TextInputAction.next),
          PasswordTextField(
            passwordController: TextEditingController(),
            textInputAction: TextInputAction.go,
            labelText: 'Password',
          ),
          const ForgotPassword(),
          AuthButton(onPressed: () {}, label: 'Sign In'),
        ],
      ),
    );
  }
}
