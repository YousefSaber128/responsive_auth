import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        FlexibleSpaceBar,
        MediaQuery,
        SliverAppBar,
        SliverSafeArea,
        StatelessWidget,
        TextStyle,
        immutable;

import '../../../../../core/widgets/y_text.dart' show YText;

@immutable
final class AuthAppBar extends StatelessWidget {
  const AuthAppBar({required this.title, super.key});
  final String title;
  @override
  SliverSafeArea build(final BuildContext context) => SliverSafeArea(
    sliver: SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        background: Center(
          child: YText(title, style: const TextStyle(fontSize: 32)),
        ),
      ),
      expandedHeight: MediaQuery.sizeOf(context).height / 4,
    ),
  );
}
