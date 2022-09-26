import 'package:black_jack/provider/deckStoreProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Result extends ConsumerStatefulWidget {
  const Result({
    Key? key,
  }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends ConsumerState<Result> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 200,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 25,
                ),
                child: Text(
                  'WIN!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      ref
                          .read(deckStoreStateNotifierProvider.notifier)
                          .resetDeck();
                      Navigator.of(context).pop();
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Text(
                          'ホームに戻る',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (ref.read(deckStoreStateNotifierProvider).length <
                          52 / 2) {
                        ref
                            .read(deckStoreStateNotifierProvider.notifier)
                            .resetDeck();
                      }
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Text(
                          'もう一度',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
