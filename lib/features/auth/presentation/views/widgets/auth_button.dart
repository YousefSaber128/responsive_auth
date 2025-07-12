import 'package:flutter/material.dart'
    show BuildContext, FilledButton, StatelessWidget, TextStyle, Theme, Widget;
import '../../../../../core/widgets/y_text.dart' show YText;

class AuthButton extends StatelessWidget {
  const AuthButton({required this.onPressed, required this.label, super.key});
  final void Function()? onPressed;
  final String label;

  @override
  Widget build(final BuildContext context) => FilledButton(
    onPressed: onPressed,
    child: YText(
      label,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    ),
  );
}
