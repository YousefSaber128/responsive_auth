import 'package:flutter/widgets.dart'
    show
        BuildContext,
        CustomScrollView,
        EdgeInsets,
        ScrollViewKeyboardDismissBehavior,
        SizedBox,
        SliverList,
        SliverPadding,
        StatelessWidget,
        Widget,
        immutable;
import '../../../../../../core/helpers/routes.dart' show AppRouter;
import '../auth_app_bar.dart' show AuthAppBar;
import '../having_account.dart' show HavingAccount;
import '../or_divider.dart' show OrDivider;
import 'continue_with_facebook_button.dart' show ContinueWithFacebookButton;
import 'continue_with_google_button.dart' show ContinueWithGoogleButton;
import 'sign_in_form.dart' show SignInForm;

@immutable
final class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});
  @override
  CustomScrollView build(final BuildContext context) => CustomScrollView(
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    slivers: <Widget>[
      const AuthAppBar(title: 'Sign In'),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverList.list(
          children: <Widget>[
            const SizedBox(height: 8),
            const SignInForm(),
            const SizedBox(height: 32),
            HavingAccount(
              content: "Don't have an account?",
              title: 'Register',
              onTap: () => AppRouter.register(context),
            ),
            const SizedBox(height: 32),
            const OrDivider(),
            const SizedBox(height: 32),
            const ContinueWithGoogleButton(),
            const SizedBox(height: 24),
            const ContinueWithFacebookButton(),
          ],
        ),
      ),
    ],
  );
}
