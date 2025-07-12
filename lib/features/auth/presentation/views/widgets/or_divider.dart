import 'package:flutter/material.dart'
    show Divider, Flexible, Row, StatelessWidget, TextStyle, Widget, immutable;

import '../../../../../core/widgets/y_text.dart' show YText;

@immutable
final class OrDivider extends StatelessWidget {
  const OrDivider({super.key});
  @override
  Row build(_) {
    const flexible = Flexible(child: Divider(thickness: 1.5));
    return const Row(
      spacing: 24,
      children: <Widget>[
        flexible,
        YText('OR', style: TextStyle(fontSize: 16)),
        flexible,
      ],
    );
  }
}
