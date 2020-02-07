import 'package:ayes_conference_app/app_config.dart';
import 'package:ayes_conference_app/config.dart';
import 'package:flutter/material.dart';

import 'main_widget.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: '$Config.title (dev)',
    flavorName: 'development',
    child: new MyApp(),
  );

  runApp(configuredApp);
}
