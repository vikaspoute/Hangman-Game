import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

class HangmanWords {
  int wordCounter = 0;
  List<int> usedNumbers = [];
  List<String> words = [];

  HangmanWords() {
    // Initialize the words list when the object is created.
    readWords();
  }

  Future<void> readWords() async {
    String fileText = await rootBundle.loadString('res/hangman_words.txt');
    words = fileText.split('\n');
  }

  void resetWords() {
    wordCounter = 0;
    usedNumbers = [];
  }

  String getWord() {
    wordCounter += 1;
    var rand = Random();
    int wordLength = words.length;
    int randNumber = rand.nextInt(wordLength);
    do {
      if (!usedNumbers.contains(randNumber)) {
        usedNumbers.add(randNumber);
        return words[randNumber];
      } else {
        randNumber = rand.nextInt(wordLength);
      }
    } while (true);
  }

  String getHiddenWord(int wordLength) {
    String hiddenWord = '';
    for (int i = 0; i < wordLength; i++) {
      hiddenWord += '_';
    }
    return hiddenWord;
  }
}
