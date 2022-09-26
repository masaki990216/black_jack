import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayPageViewModel extends StateNotifier<PlayPageViewData> {
  PlayPageViewModel() : super(PlayPageViewData());
}

class PlayPageViewData {
  PlayPageViewData({
    String? playerHand,
    String? dealerHand,
  })  : playerHand = playerHand ?? '',
        dealerHand = dealerHand ?? '';

  /// playerHand
  String? playerHand;

  /// dealerHand
  String? dealerHand;

  PlayPageViewData copyWith({
    String? playerHand,
    String? dealerHand,
  }) =>
      PlayPageViewData(
        playerHand: playerHand ?? this.playerHand,
        dealerHand: dealerHand ?? this.dealerHand,
      );
}
