import 'package:flutter/material.dart' show Icons;
import 'package:flutter/services.dart'
    show
        FilteringTextInputFormatter,
        TextDirection,
        TextInputAction,
        TextInputFormatter,
        TextInputType;
import 'package:flutter/widgets.dart'
    show BuildContext, Icon, StatelessWidget, TextEditingController, immutable;

import '../../../../../core/widgets/app_text_field.dart' show AppTextField;

@immutable
final class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    this.textInputAction,
    this.onFieldSubmitted,
  });
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  @override
  AppTextField build(final BuildContext context) => AppTextField(
    controller: TextEditingController(),
    keyboardType: TextInputType.emailAddress,
    textInputAction: textInputAction,
    textDirection: TextDirection.ltr,
    onFieldSubmitted: onFieldSubmitted,
    validator: _validateEmail,
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.allow(
        RegExp('[0-9@a-z.]', caseSensitive: false),
      ),
    ],
    labelText: 'Email',
    hintText: 'examble@email.com',
    prefixIcon: const Icon(Icons.email_rounded),
  );
}

String? _validateEmail(final String? input) {
  final firebaseEmailRegex = RegExp(
    r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$',
    caseSensitive: false,
  );
  if (input?.isEmpty ?? true) {
    return 'This field is required';
  } else if (!firebaseEmailRegex.hasMatch(input!)) {
    return 'Invalid email';
  } else {
    return null;
  }
}
