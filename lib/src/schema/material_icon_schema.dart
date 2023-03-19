import 'package:json_theme/json_theme_schemas.dart';

class MaterialIconSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_dynamic_widget_plugin_material_icons/material_icon.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    r'$children': 0,
    r'$comment': 'https://api.flutter.dev/flutter/widgets/Icon-class.html',
    'type': 'object',
    'title': 'MaterialIcon',
    'additionalProperties': false,
    'required': [
      'icon',
    ],
    'properties': {
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'icon': SchemaHelper.stringSchema,
      'semanticLabel': SchemaHelper.stringSchema,
      'size': SchemaHelper.numberSchema,
      'textDirection': SchemaHelper.objectSchema(TextDirectionSchema.id),
    },
  };
}
