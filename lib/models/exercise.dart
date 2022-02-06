class Excercise {
  final String title;
  final String image;
  final int duration;
  final int energy;
  Excercise({
    required this.title,
    required this.image,
    required this.duration,
    required this.energy,
  });
}

final exercises = [
  Excercise(
    title: 'Excercise 1',
    image: 'assets/images/exercise1.jpeg',
    duration: 35,
    energy: 120,
  ),
  Excercise(
    title: 'Excercise 2',
    image: 'assets/images/exercise2.jpeg',
    duration: 40,
    energy: 160,
  ),
  Excercise(
    title: 'Excercise 3',
    image: 'assets/images/exercise3.jpeg',
    duration: 25,
    energy: 100,
  ),
  Excercise(
    title: 'Excercise 4',
    image: 'assets/images/exercise4.jpeg',
    duration: 30,
    energy: 110,
  ),
];
