import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        Center,
        OutlinedButton,
        Stack,
        StatelessWidget,
        TextStyle,
        Theme,
        VoidCallback,
        Widget,
        immutable;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

import '../../../../../../core/widgets/y_text.dart' show YText;

@immutable
final class ContinueWithProviderButton extends StatelessWidget {
  const ContinueWithProviderButton({
    required this.onPressed,
    required this.asset,
    required this.label,
    super.key,
  });
  final VoidCallback? onPressed;
  final String asset;
  final String label;
  @override
  OutlinedButton build(final BuildContext constext) => OutlinedButton(
    onPressed: onPressed,
    child: Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        SvgPicture.asset(asset, height: 24 * 1.2),
        Center(
          child: YText(
            label,
            style: TextStyle(color: Theme.of(constext).colorScheme.onSurface),
          ),
        ),
      ],
    ),
  );
}
