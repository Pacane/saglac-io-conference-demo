import 'package:flutter/material.dart';
import 'package:presentation/src/widgets/theme.dart';

import '../../domain.dart';

class GridBottomBar extends StatelessWidget {
  final Presenter presenter;

  GridBottomBar(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GridTileBar(
          backgroundColor: Colors.black54,
          title: Center(
              child: Text(
            presenter.name,
            style: TileHeaderStyle,
          )),
          subtitle: Center(
              child: Text(
            presenter.talkName,
            style: DefaultTextStyle.of(context).style.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).accentTextTheme.subtitle.color,
                ),
          )),
        ),
      ],
    );
  }
}

class GridTileMainWidget extends StatelessWidget {
  final Presenter presenter;

  const GridTileMainWidget(this.presenter);

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            presenter.imagePath,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.black54, Colors.transparent],
                  begin: FractionalOffset.bottomCenter),
            ),
          ),
        ],
      );
}

List<Widget> tiles(List<Presenter> presenters) => presenters
    .map((p) => GridTile(
          child: GridTileMainWidget(p),
          footer: GridBottomBar(p),
        ))
    .toList();

//List<Widget> tiles(List<Presenter> presenters) => presenters.isEmpty
//    ? []
//    : List.generate(200, (i) => presenters[seed.nextInt(presenters.length - 1)])
//        .map((p) => GridTile(
//              child: GridTileMainWidget(p),
//              footer: GridBottomBar(p),
//            ))
//        .toList();

class ConferenciersStreamWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StreamBuilder(
      initialData: <Presenter>[],
      stream: fetchPresenters(),
      builder: (context, snapshot) => GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate:
                SliverChildListDelegate.fixed(tiles(snapshot.data)),
          ));
}
