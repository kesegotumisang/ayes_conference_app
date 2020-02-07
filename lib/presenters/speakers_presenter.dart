import 'package:ayes_conference_app/interfaces/presenters.dart';
import 'package:ayes_conference_app/interfaces/views.dart';
import 'package:ayes_conference_app/models/data.dart';
import 'package:ayes_conference_app/utils.dart';
import 'package:ayes_conference_app/widgets/speaker.dart';
import 'package:flutter/material.dart';

class SpeakersPresenter implements ISpeakersPresenter {
  final ISpeakersView _view;

  SpeakersPresenter(this._view);

  @override
  speakerTap(BuildContext context, TalkBoss boss) {
    Navigator.of(context).push(FadeRoute(SpeakerWidget(boss)));
  }
}
