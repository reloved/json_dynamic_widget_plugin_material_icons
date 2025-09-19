// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_material_icons_plugin_registrar.dart';

// **************************************************************************
// Generator: JsonWidgetRegistrarBuilder
// **************************************************************************

class JsonMaterialIconsPluginRegistrar
    extends _JsonMaterialIconsPluginRegistrar {
  final Map<String, JsonWidgetBuilderContainer> _builders =
      <String, JsonWidgetBuilderContainer>{};

  final Map<String, Map<String, Object>> _schemas =
      <String, Map<String, Object>>{};

  static JsonMaterialIconsPluginRegistrar registerDefaults(
      {JsonWidgetRegistry? registry}) {
    registry ??= JsonWidgetRegistry.instance;
    return JsonMaterialIconsPluginRegistrar()
      ..withMaterialIcon()
      ..register(registry);
  }

  Map<String, Map<String, Object>> get schemas =>
      Map<String, Map<String, Object>>.from(_schemas);

  void register(JsonWidgetRegistry registry) {
    for (var b in _builders.entries) {
      registry.registerCustomBuilder(b.key, b.value);
    }

    final schemaCache = SchemaCache();
    for (var s in _schemas.entries) {
      schemaCache.addSchema(s.key, s.value);
    }
  }

  void withMaterialIcon() {
    _builders[JsonMaterialIconBuilder.kType] = const JsonWidgetBuilderContainer(
      builder: JsonMaterialIconBuilder.fromDynamic,
      schemaId: MaterialIconSchema.id,
    );
    _schemas[MaterialIconSchema.id] = MaterialIconSchema.schema;
  }
}
