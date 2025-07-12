import 'package:flutter/material.dart'
    show
        FocusNode,
        Icon,
        IconButton,
        Icons,
        State,
        StatefulWidget,
        TextDirection,
        TextEditingController,
        TextInputAction,
        TextInputType,
        ValueChanged,
        immutable;
import '../../../../../core/widgets/app_text_field.dart' show AppTextField;

@immutable
final class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.passwordController,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onSaved,
    this.labelText,
  });
  final TextEditingController? passwordController;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String?>? onSaved;
  final String? labelText;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

final class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;
  @override
  AppTextField build(_) => AppTextField(
    controller: widget.passwordController,
    keyboardType: TextInputType.visiblePassword,
    textInputAction: widget.textInputAction,
    textDirection: TextDirection.ltr,
    obscureText: obscureText,
    onFieldSubmitted: widget.onFieldSubmitted,
    onSaved: widget.onSaved,
    validator: _validatePassword,
    labelText: widget.labelText,
    hintText: r'P@s$w0rd',
    prefixIcon: const Icon(Icons.password_rounded),
    suffixIcon: IconButton(
      focusNode: FocusNode(skipTraversal: true),
      onPressed: () => setState(() => obscureText = !obscureText),
      icon: const Icon(Icons.visibility_rounded),
      selectedIcon: const Icon(Icons.visibility_off_rounded),
      isSelected: obscureText,
    ),
  );
}

String? _validatePassword(final String? input) {
  if (input?.isEmpty ?? true) {
    return 'This field is required';
  } else if ((input?.length ?? 0) < 6) {
    return 'Password must be at least 6 characters';
  } else {
    return null;
  }
}
