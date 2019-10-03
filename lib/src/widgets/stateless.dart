import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialNetwork {
  final String name;

  const SocialNetwork._(this.name);

  static const SocialNetwork facebook = SocialNetwork._('Facebook');
  static const SocialNetwork twitter = SocialNetwork._('Twitter');
  static const SocialNetwork instagram = SocialNetwork._('Instagram');
}

IconData findIcon(SocialNetwork social) {
  switch (social) {
    case SocialNetwork.facebook:
      return FontAwesomeIcons.facebook;
    case SocialNetwork.instagram:
      return FontAwesomeIcons.instagram;
    case SocialNetwork.twitter:
      return FontAwesomeIcons.twitter;
    default:
      return FontAwesomeIcons.link;
  }
}

class SocialIcon extends StatelessWidget {
  final SocialNetwork social;

  SocialIcon(this.social);

  @override
  Widget build(BuildContext context) => IconButton(
    onPressed: () {},
    iconSize: 100.0,
    icon: Icon(
      findIcon(social),
      color: Theme
          .of(context)
          .accentColor,
    ),
      );
}
