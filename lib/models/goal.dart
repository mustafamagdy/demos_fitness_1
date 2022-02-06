class Goal {
  final String title;
  final String subtitle;
  final String image;
  final int duration;
  final int energy;
  Goal({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.duration,
    required this.energy,
  });
}

final goals = [
  Goal(
    title: 'Body Building',
    subtitle: 'Full body workout',
    image: 'assets/images/exercise4.jpeg',
    duration: 35,
    energy: 130,
  ),
  Goal(
    title: 'Six Packs',
    subtitle: 'Build your six packs',
    image: 'assets/images/exercise3.jpeg',
    duration: 20,
    energy: 120,
  ),
  Goal(
    title: 'Body Building',
    subtitle: 'Full body workout',
    image: 'assets/images/exercise2.jpeg',
    duration: 40,
    energy: 110,
  ),
  Goal(
    title: 'Body Building',
    subtitle: 'Full body workout',
    image: 'assets/images/exercise1.jpeg',
    duration: 10,
    energy: 60,
  ),
];
