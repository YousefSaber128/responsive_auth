import 'package:flutter/widgets.dart'
    show
        AutovalidateMode,
        BuildContext,
        CustomScrollView,
        EdgeInsets,
        Form,
        FormState,
        GlobalKey,
        ScrollViewKeyboardDismissBehavior,
        SizedBox,
        SliverList,
        SliverPadding,
        StatelessWidget,
        Widget,
        immutable;

import '../auth_app_bar.dart' show AuthAppBar;
import '../auth_button.dart' show AuthButton;
import '../email_text_field.dart' show EmailTextField;

@immutable
final class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});
  @override
  CustomScrollView build(final BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: <Widget>[
        const AuthAppBar(title: 'Reset Password'),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUnfocus,
            child: SliverList.list(
              children: <Widget>[
                const SizedBox(height: 8),
                const EmailTextField(),
                const SizedBox(height: 168),
                AuthButton(onPressed: () {}, label: 'Reset Password'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
