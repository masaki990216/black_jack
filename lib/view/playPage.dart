import 'package:black_jack/provider/deckStoreProvider.dart';
import 'package:black_jack/provider/deviceSizeProvider.dart';
import 'package:black_jack/view/header.dart';
import 'package:black_jack/view/playingCard.dart';
import 'package:black_jack/view/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayPage extends ConsumerStatefulWidget {
  const PlayPage({
    Key? key,
  }) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends ConsumerState<PlayPage> {
  @override
  Widget build(BuildContext context) {
    final playerCard1 =
        ref.read(deckStoreStateNotifierProvider.notifier).drawCard();
    final playerCard2 =
        ref.read(deckStoreStateNotifierProvider.notifier).drawCard();

    final dealerOpenCard =
        ref.read(deckStoreStateNotifierProvider.notifier).drawCard();
    final dealerClosedCard =
        ref.read(deckStoreStateNotifierProvider.notifier).drawCard();

    return Scaffold(
      appBar: header(),
      body: Container(
        width: ref.read(deviceSizeProvider).width,
        height: ref.read(deviceSizeProvider).height - 60,
        color: Colors.green,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  // Deck
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      PlayingCard(
                        title: '',
                        isNotFront: true,
                        isDeck: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Dealer
                  Expanded(
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 80 + 35,
                          height: 120,
                        ),
                        PlayingCard(title: dealerOpenCard),
                        Positioned(
                          top: 0,
                          left: 35,
                          child: PlayingCard(title: dealerClosedCard),
                        ),
                      ],
                    ),
                  ),

                  // Player
                  Stack(
                    children: [
                      SizedBox(
                        width: 80 + 35,
                        height: 120,
                      ),
                      PlayingCard(title: playerCard1),
                      Positioned(
                        top: 0,
                        left: 35,
                        child: PlayingCard(title: playerCard2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Result(),
          ],
        ),
      ),
    );
  }
}
