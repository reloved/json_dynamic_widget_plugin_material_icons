import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:material_icons_named/material_icons_named.dart';

part 'json_material_icon_builder.g.dart';

/// Builder that can build an [Icon] widget.
@JsonWidget(
  type: 'material_icon',
  widget: 'MaterialIcon',
)
abstract class _JsonMaterialIconBuilder extends JsonWidgetBuilder {
  const _JsonMaterialIconBuilder({
    super.args,
  });

  @JsonArgEncoder('icon')
  static dynamic _encodeIcon(IconData value) {
    dynamic result = value.codePoint;
    for (var icons in materialIcons.entries) {
      if (icons.value.codePoint == value.codePoint) {
        result = icons.key;
        break;
      }
    }

    return result;
  }

  @JsonArgDecoder('icon')
  IconData _decodeIcon({required dynamic value}) {
    IconData result;

    if (value is IconData) {
      result = value;
    } else if (value is int) {
      result = IconData(value);
    } else if (value is String) {
      result = materialIcons[value]!;
    } else {
      throw Exception('Unknown icon type encountered: [$value]');
    }

    return result;
  }

  @JsonPositionedParam('icon')
  @JsonSchemaName('MaterialIconSchema')
  @override
  Icon buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
