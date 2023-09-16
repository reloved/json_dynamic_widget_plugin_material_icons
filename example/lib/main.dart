import 'dart:convert';

import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_material_icons/json_dynamic_widget_plugin_material_icons.dart';
import 'package:logging/logging.dart';
import 'package:material_icons_named/material_icons_named.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    if (record.error != null) {
      debugPrint('${record.error}');
    }
    if (record.stackTrace != null) {
      debugPrint('${record.stackTrace}');
    }
  });

  final navigatorKey = GlobalKey<NavigatorState>();

  final registry = JsonWidgetRegistry.instance;
  JsonMaterialIconsPluginRegistrar.registerDefaults(registry: registry);

  // There are thousands of icons so the schema validation takes forever in
  // debug mode.  Let's turn it off.
  SchemaValidator.enabled = false;

  registry.navigatorKey = navigatorKey;

  final data = JsonWidgetData.fromDynamic(
    json.decode(
      await rootBundle.loadString('assets/pages/material_icons.json'),
    ),
  );

  registry.setValue('icons', materialIcons);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleWidgetPage(
        data: data,
      ),
      theme: ThemeData.light(),
    ),
  );
}

class ExampleWidgetPage extends StatelessWidget {
  const ExampleWidgetPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final JsonWidgetData data;

  @override
  Widget build(BuildContext context) => data.build(context: context);
}
