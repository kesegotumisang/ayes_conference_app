import 'package:ayes_conference_app/app_config.dart';
import 'package:ayes_conference_app/config.dart';
import 'package:ayes_conference_app/main_widget.dart';
import 'package:flutter/material.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: Config.title,
    flavorName: 'production',
    child: new MyApp(),
  );

  runApp(configuredApp);
}
