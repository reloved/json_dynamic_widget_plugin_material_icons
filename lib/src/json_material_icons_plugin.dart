import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_material_icons/json_dynamic_widget_plugin_material_icons.dart';
import 'package:json_theme/json_theme_schemas.dart';

class JsonMaterialIconsPlugin {
  static void bind(JsonWidgetRegistry registry) {
    var schemaCache = SchemaCache();
    schemaCache.addSchema(
      MaterialIconSchema.id,
      MaterialIconSchema.schema,
    );

    registry.registerCustomBuilder(
      JsonMaterialIconBuilder.type,
      JsonWidgetBuilderContainer(
        builder: JsonMaterialIconBuilder.fromDynamic,
        schemaId: MaterialIconSchema.id,
      ),
    );
  }
}
