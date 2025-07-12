import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        CustomScrollView,
        EdgeInsets,
        ScrollViewKeyboardDismissBehavior,
        SizedBox,
        SliverList,
        SliverPadding,
        StatelessWidget,
        TextButton,
        Widget,
        immutable;

import '../../../../../../core/helpers/routes.dart' show AppRouter;
import '../../../../../../core/widgets/y_text.dart' show YText;
import '../auth_app_bar.dart' show AuthAppBar;
import '../having_account.dart' show HavingAccount;
import '../or_divider.dart' show OrDivider;
import 'register_form.dart' show RegisterForm;

@immutable
final class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});
  @override
  CustomScrollView build(final BuildContext context) => CustomScrollView(
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    slivers: <Widget>[
      const AuthAppBar(title: 'Register'),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverList.list(
          children: <Widget>[
            const SizedBox(height: 8),
            const RegisterForm(),
            const SizedBox(height: 32),
            HavingAccount(
              content: 'Already have an account?',
              title: 'Sign In',
              onTap: () => AppRouter.signIn(context),
            ),
            const SizedBox(height: 32),
            const OrDivider(),
            const SizedBox(height: 24),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: const YText('Continue as a guest'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
