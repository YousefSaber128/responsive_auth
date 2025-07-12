import 'package:flutter/widgets.dart'
    show BuildContext, StatelessWidget, immutable;

import '../../../../../../core/constants/app_assets.dart' show AppAssets;
import 'continue_with_provider_button.dart' show ContinueWithProviderButton;

@immutable
final class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({super.key});
  @override
  ContinueWithProviderButton build(final BuildContext context) =>
      ContinueWithProviderButton(
        asset: AppAssets.google,
        label: 'Continue with Google',
        onPressed: () {},
      );
}
