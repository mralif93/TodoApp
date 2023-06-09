import 'package:flutter/material.dart';
import 'package:todoapp/pre_cache.dart';

import 'app.dart';
import 'local_storage/shared_preferences.dart';
import 'error.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init shared preferences local storage
  await UserSharedPreferences.init();
  // pre cache all svg assets
  await PreCacheAssets.preLoadAllSvg();
  ErrorHandler.catchAll(() {
    runApp(const App());
  });
}
