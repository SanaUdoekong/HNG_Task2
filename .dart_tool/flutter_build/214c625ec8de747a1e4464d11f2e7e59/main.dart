// @dart=2.7

import 'dart:ui' as ui;

import 'package:hng_stage2_task/print_name(no.2).dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
