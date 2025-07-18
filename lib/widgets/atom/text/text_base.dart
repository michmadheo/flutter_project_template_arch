import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/themes/fonts/theme_fonts.dart';

class TextBase extends StatelessWidget {
  final String label;
  final String accessibilityLabel;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextStyle? fontFamily;

  const TextBase({
    super.key,
    this.label = '',
    this.accessibilityLabel = '',
    this.style,
    this.maxLines,
    this.textAlign,
    this.color,
    this.overflow,
    this.softWrap,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: 'text-$accessibilityLabel',
      child: Text(
        label,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        overflow: overflow,
        style: ThemeFonts.defaultTextBase
            .merge(TextStyle(color: color))
            .merge(style)
            .merge(ThemeFonts.fh1_5),
      ),
    );
  }
}
