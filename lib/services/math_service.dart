import 'dart:math';

class MathService {
  static final _instance = MathService._internal();
  MathService._internal();

  static MathService getInstance() {
    return _instance;
  }

  Random random = Random();

  int getNewRandom({required int oldNumber, required int max}) {
    // Get a new random number in the range 0 to (max - 1)
    var newNumber = random.nextInt(max);

    if (newNumber == oldNumber) {
      // If it is the same as the old number, let's change it.
      // If newNumber was the upper limit we set it to 0.
      // Otherwise we add 1 to it.
      return newNumber == (max - 1) ? 0 : newNumber + 1;
    }
    return newNumber;
  }
}
