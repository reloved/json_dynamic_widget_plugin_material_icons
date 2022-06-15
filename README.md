<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [json_dynamic_widget_plugin_material_icons](#json_dynamic_widget_plugin_material_icons)
  - [Table of Contents](#table-of-contents)
  - [Live Example](#live-example)
  - [Introduction](#introduction)
  - [Using the Plugin](#using-the-plugin)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# json_dynamic_widget_plugin_material_icons

## Table of Contents

* [Live Example](#live-example)
* [Introduction](#introduction)
* [Using the Plugin](#using-the-plugin)


## Live Example

* [Web](https://peiffer-innovations.github.io/json_dynamic_widget_plugin_material_icons/web/index.html#/)


## Introduction

Plugin to the [JSON Dynamic Widget](https://peiffer-innovations.github.io/json_dynamic_widget) to provide named support for Material Icons.


## Using the Plugin

```dart
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_material_icons/json_dynamic_widget_plugin_material_icons.dart';


void main() {
  // Ensure Flutter's binding is complete
  WidgetsFlutterBinding.ensureInitialized();

  // ...

  // Get an instance of the registry
  var registry = JsonWidgetRegistry.instance;

  // Bind the plugin to the registry.  This is necessary for the registry to
  // find the widget provided by the plugin
  JsonMaterialIconsPlugin.bind(registry);

  // ...
}
```

The icons can be referenced by name ising the new `material_icon` type such as:
```dart
{
  'type': 'material_icon',
  'args': {
    'icon': 'arrow_up'
  }
}
```
