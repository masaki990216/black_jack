import 'package:black_jack/view/header.dart';
import 'package:black_jack/view/playPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartPage extends ConsumerStatefulWidget {
  const StartPage({
    Key? key,
  }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ConsumerState<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 60,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Black Jack',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PlayPage();
                    },
                  ),
                );
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'START',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
