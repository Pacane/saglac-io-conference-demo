import 'package:flutter/material.dart';

import 'stateless.dart';

class SocialSelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SocialSelectorState();
}

class SocialSelectorState extends State<SocialSelector> {
  SocialNetwork socialNetwork = SocialNetwork.facebook;

  void onNetworkSelected(SocialNetwork network) {
    setState(() {
      socialNetwork = network;
    });
  }

  @override
  Widget build(BuildContext context) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SocialIcon(socialNetwork),
          Column(
            children: <Widget>[
              buildRadioListTile(SocialNetwork.facebook),
              buildRadioListTile(SocialNetwork.twitter),
              buildRadioListTile(SocialNetwork.instagram),
            ],
          )
        ],
      );

  RadioListTile<SocialNetwork> buildRadioListTile(SocialNetwork socialNetwork) {
    return RadioListTile(
      value: socialNetwork,
      groupValue: this.socialNetwork,
      onChanged: (value) => onNetworkSelected(value),
      title: Text(socialNetwork.name),
    );
  }
}
