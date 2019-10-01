List<Presenter> presenters = [
  Presenter(
    'Austin Parker',
    'assets/austinparker.jpg',
    "Observability isn't a Checkbox",
  ),
  Presenter(
    'Joel Lord',
    'assets/joellord.jpg',
    "La sécurité, je m'en fiche (vous devriez aussi)",
  ),
  Presenter(
    'Ophélie Mak',
    'assets/ophelie.jpg',
    "Optimiser vos tests navigateurs grâce à TestCafé",
  ),
  Presenter(
    'Damien Van Der Windt',
    'assets/damien.jpg',
    "JAMStack, le comeback du Web statique",
  ),
  Presenter(
    'Joël Hébert',
    'assets/joel.jpg',
    "Flutter: Apps mobiles natives multi-plateformes",
  ),
  Presenter(
    'Julien-Samuel Lacroix',
    'assets/juliensamuel.jpg',
    "PostgreSQL: plus vite, plus loin, plus robuste",
  ),
  Presenter(
    'Micael Bergeron',
    'assets/micael.jpg',
    "Naming things",
  ),
];

class Presenter {
  final String name;
  final String imagePath;
  final String talkName;

  Presenter(this.name, this.imagePath, this.talkName);
}
