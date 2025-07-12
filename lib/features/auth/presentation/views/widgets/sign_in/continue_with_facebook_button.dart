import 'package:flutter/widgets.dart'
    show BuildContext, StatelessWidget, immutable;

import '../../../../../../core/constants/app_assets.dart' show AppAssets;
import 'continue_with_provider_button.dart' show ContinueWithProviderButton;

@immutable
final class ContinueWithFacebookButton extends StatelessWidget {
  const ContinueWithFacebookButton({super.key});
  @override
  ContinueWithProviderButton build(final BuildContext context) =>
      ContinueWithProviderButton(
        asset: AppAssets.facebook,
        label: 'Continue with Facebook',
        onPressed: () {},
      );
}
