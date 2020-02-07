import 'package:ayes_conference_app/interfaces/presenters.dart';
import 'package:ayes_conference_app/interfaces/views.dart';
import 'package:ayes_conference_app/models/list_items.dart';
import 'package:ayes_conference_app/presenters/speakers_presenter.dart';
import 'package:ayes_conference_app/widgets/reusable.dart';
import 'package:flutter/material.dart';

class SpeakersWidget extends StatefulWidget implements ISpeakersView {
  final List<ListItem> speakerList;
  final bool loaded;

  SpeakersWidget({Key key, @required this.speakerList, @required this.loaded})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => SpeakersWidgetState();
}

class SpeakersWidgetState extends State<SpeakersWidget>
    implements ISpeakersView {
  ISpeakersPresenter _presenter;

  @override
  void initState() {
    _presenter = SpeakersPresenter(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Container(
          color: Theme.of(context).backgroundColor,
          child: Stack(children: <Widget>[
            Reusable.header,
            !widget.loaded
                ? Reusable.loadingProgress
                : ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: widget.speakerList.length,
                    itemBuilder: (context, index) {
                      return widget.speakerList[index].getWidget(
                          context, orientation,
                          onTapCallback: _presenter.speakerTap);
                    }),
            Reusable.statusBarTopShadow,
          ]));
    });
  }
}
