import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialNetwork { facebook, twitter, instagram }

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

class SocialIconButton extends StatelessWidget {
  final SocialNetwork social;
  final String url;

  SocialIconButton(this.social, this.url);

  @override
  Widget build(BuildContext context) => IconButton(
        icon: Icon(findIcon(social)),
        onPressed: () => launch(url),
      );
}
