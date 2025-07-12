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

import '../auth_button.dart' show AuthButton;
import '../email_text_field.dart' show EmailTextField;
import '../password_text_field.dart' show PasswordTextField;

@immutable
final class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});
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
            textInputAction: TextInputAction.next,
            labelText: 'Password',
          ),
          PasswordTextField(
            passwordController: TextEditingController(),
            textInputAction: TextInputAction.go,
            labelText: 'Confirm Password',
          ),
          AuthButton(onPressed: () {}, label: 'Register'),
        ],
      ),
    );
  }
}
