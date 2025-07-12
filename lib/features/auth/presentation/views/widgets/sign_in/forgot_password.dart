import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        SizedBox,
        StatelessWidget,
        TextSpan,
        TextStyle,
        Theme,
        immutable;

import '../../../../../../core/helpers/routes.dart' show AppRouter;
import '../../../../../../core/widgets/y_text.dart' show YRichText;

@immutable
final class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  @override
  SizedBox build(final BuildContext context) => SizedBox(
    height: 84,
    child: Align(
      alignment: AlignmentDirectional.topEnd,
      child: YRichText(
        TextSpan(
          text: 'Forgot Password?',
          recognizer: TapGestureRecognizer()
            ..onTap = () => AppRouter.resetPassword(context),
        ),
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    ),
  );
}
