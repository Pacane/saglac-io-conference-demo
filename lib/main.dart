import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'domain.dart';
import 'src/widgets/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saglac.io Conférence',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ConferenciersPage(),
    );
  }
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
//        body: Center(child: SocialIcon(SocialNetwork.instagram)),
//        body: Center(child: SocialSelector()),
      );
}

class ConferenciersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      childrenDelegate: SliverChildListDelegate.fixed(tiles(presenters)),
    );
  }
}
