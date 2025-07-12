import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show
        BuildContext,
        StatelessWidget,
        TextAlign,
        TextSpan,
        TextStyle,
        Theme,
        VoidCallback,
        immutable;

import '../../../../../core/widgets/y_text.dart' show YRichText;

@immutable
final class HavingAccount extends StatelessWidget {
  const HavingAccount({super.key, this.content, this.title, this.onTap});
  final String? content;
  final String? title;
  final VoidCallback? onTap;
  @override
  YRichText build(final BuildContext context) => YRichText(
    textAlign: TextAlign.center,
    TextSpan(
      style: const TextStyle(fontSize: 16),
      children: <TextSpan>[
        TextSpan(text: '$content '),
        TextSpan(
          text: title,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      ],
    ),
  );
}
