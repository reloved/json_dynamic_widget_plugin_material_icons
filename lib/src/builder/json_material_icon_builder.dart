import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:json_class/json_class.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_theme/json_theme.dart';
import 'package:material_icons_named/material_icons_named.dart';

/// Builder that can build an [Icon] widget.  See the [fromDynamic] for the
/// format.
class JsonMaterialIconBuilder extends JsonWidgetBuilder {
  JsonMaterialIconBuilder({
    this.color,
    required this.icon,
    this.semanticLabel,
    this.size,
    this.textDirection,
  }) : super(numSupportedChildren: kNumSupportedChildren);

  static const kNumSupportedChildren = 0;
  static const type = 'material_icon';

  final Color? color;
  final IconData? icon;
  final String? semanticLabel;
  final double? size;
  final TextDirection? textDirection;

  /// Builds the builder from a Map-like dynamic structure.  This expects the
  /// JSON format to be of the following structure:
  ///
  /// ```json
  /// {
  ///   "color": <Color>,
  ///   "icon": <String>,
  ///   "semanticLabel": <String>,
  ///   "size": <double>,
  ///   "textDirection": <TextDirection>
  /// }
  /// ```
  ///
  /// See also:
  ///  * [ThemeDecoder.decodeColor]
  ///  * [ThemeDecoder.decodeIconData]
  ///  * [ThemeDecoder.decodeTextDirection]
  static JsonMaterialIconBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    JsonMaterialIconBuilder? result;

    if (map != null) {
      result = JsonMaterialIconBuilder(
        color: ThemeDecoder.decodeColor(
          map['color'],
          validate: false,
        ),
        icon: materialIcons[map['icon']],
        semanticLabel: map['semanticLabel'],
        size: JsonClass.parseDouble(map['size']),
        textDirection: ThemeDecoder.decodeTextDirection(
          map['textDirection'],
          validate: false,
        ),
      );
    }

    return result;
  }

  @override
  Widget buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    return Icon(
      icon,
      color: color,
      key: key,
      semanticLabel: semanticLabel,
      size: size,
      textDirection: textDirection,
    );
  }
}
