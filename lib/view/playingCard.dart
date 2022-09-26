import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayingCard extends ConsumerStatefulWidget {
  const PlayingCard({
    Key? key,
    required this.title,
    this.isNotFront = false,
    this.isDeck = false,
  }) : super(key: key);

  // カードの表示
  final String title;

  // 裏面かどうか
  final bool isNotFront;

  //山札かどうか
  final bool isDeck;

  @override
  _PlayingCardState createState() => _PlayingCardState();
}

class _PlayingCardState extends ConsumerState<PlayingCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 120,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: widget.isNotFront ? Colors.grey : Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: widget.isNotFront
            ? const SizedBox()
            : widget.isDeck
                ? Center(
                    child: Text(widget.title),
                  )
                : Text(widget.title),
      ),
    );
  }
}
