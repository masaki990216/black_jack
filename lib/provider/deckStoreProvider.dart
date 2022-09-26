import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

const spade = '♤';
const clover = '♧';
const heart = '♡';
const dia = '♢';

/// cardsStoreStateNotifierProvider
final deckStoreStateNotifierProvider =
    StateNotifierProvider<DeckStore, List<String>>(
  (ref) => DeckStore(),
);

/// DeckStore
///
/// トランプのデッキ
class DeckStore extends StateNotifier<List<String>> {
  DeckStore()
      : super(
          List.generate(
            52,
            (index) => index % 4 == 0
                ? spade + ((index % 13) + 1).toString().padLeft(2, '0')
                : index % 4 == 1
                    ? clover + ((index % 13) + 1).toString().padLeft(2, '0')
                    : index % 4 == 2
                        ? heart + ((index % 13) + 1).toString().padLeft(2, '0')
                        : dia + ((index % 13) + 1).toString().padLeft(2, '0'),
          ),
        );

  List<String> get deck => state;
  set deck(List<String> v) {
    state = v;
  }

  /// getDeck
  ///
  /// Deckを取得する
  List<String> getDeck() {
    return state;
  }

  /// resetDeck
  ///
  /// Deckを初期化する
  void resetDeck() {
    final defaultDeck = List.generate(
      52,
      (index) => index % 4 == 0
          ? spade + ((index % 13) + 1).toString().padLeft(2, '0')
          : index % 4 == 1
              ? clover + ((index % 13) + 1).toString().padLeft(2, '0')
              : index % 4 == 2
                  ? heart + ((index % 13) + 1).toString().padLeft(2, '0')
                  : dia + ((index % 13) + 1).toString().padLeft(2, '0'),
    );

    state = defaultDeck;
  }

  /// drawCard
  ///
  /// Deckから1枚取得する
  String drawCard() {
    final randomIndex = Random().nextInt(state.length);
    final drawingCard = state[randomIndex];

    state.removeAt(randomIndex);

    return drawingCard;
  }
}
