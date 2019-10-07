import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'domain.dart';
import 'src/widgets/theme.dart';
import 'src/widgets/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Saglac.io Conférence',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: customPink,
        ),
        home: ConferenciersPage(),
      );
}

class ConferenciersPage extends StatelessWidget {
  ConferenciersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Row(children: [
            Image.asset(
              'assets/logo.png',
              height: 36.0,
            ),
            Text(
              'Conférenciers',
              style: Theme.of(context)
                  .primaryTextTheme
                  .title
                  .apply(fontFamily: "Poppins"),
            ),
          ]),
        ),
        body: Center(child: ConferenciersList()),
//        body: Center(child: ConferenciersStreamWidget()),
//        body: Center(child: SocialIcon(SocialNetwork.instagram)),
//        body: Center(child: SocialSelector()),
      );
}

/*
    - B->I
    - HR
    - HR2
    - Outline
    - Inspect + Padding
    - Platform
    - Perf
    - Stream
    - SL + SF
 */

class ConferenciersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        childrenDelegate: SliverChildListDelegate.fixed(tiles(presenters)),
      );
}
