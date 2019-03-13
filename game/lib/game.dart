import 'dart:math';

class Game {
  final int options = 3;
  List<int> sequence = [];
  List<int> sequenceUser = [];
  int tap = 0;
  bool inGame = false;

  void start() {
    tap = 0;
    inGame = false;
    sequence = [];
    sequenceUser = [];
    generateNextItem();
  }

  Future waitSeconds(Duration d) => Future.delayed(d);

  void generateNextItem() {
    // Genera un indice random
    int randomIndex = Random().nextInt(options);
    sequence.add(randomIndex);
    print(sequence);
  }

  void addItemToSequenceUser(int idItem) {
    sequenceUser.add(idItem);
  }

  bool isValidItemTap() {
    if (sequence[tap] == sequenceUser[tap]) {
      tap++;
      if (sequence.length == sequenceUser.length) {
        generateNextItem();
        tap = 0;
        sequenceUser.clear();
      }
      return true;
    }
    return false;
  }
}
