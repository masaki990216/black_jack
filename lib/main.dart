import 'package:black_jack/view/startPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: StartPage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Jack'),
        toolbarHeight: 60,
        backgroundColor: Colors.black45,
      ),
      body: StartPage(),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height - 60,
      //   color: Colors.green,
      //   child: StartPage(),
      //   child: Stack(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.symmetric(
      //           vertical: 20,
      //           horizontal: 10,
      //         ),
      //         child: Column(
      //           children: [
      //             // Deck
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 SizedBox(
      //                   width: 80,
      //                   height: 120,
      //                   child: DecoratedBox(
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                     ),
      //                     child: Center(
      //                       child: Text('Deck'),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(height: 20),
      //
      //             // Dealer
      //             Expanded(
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   SizedBox(
      //                     width: 80,
      //                     height: 120,
      //                     child: DecoratedBox(
      //                       decoration: BoxDecoration(
      //                         color: Colors.white,
      //                       ),
      //                       child: Center(
      //                         child: Text('♤8'),
      //                       ),
      //                     ),
      //                   ),
      //                   SizedBox(width: 10),
      //                   SizedBox(
      //                     width: 80,
      //                     height: 120,
      //                     child: DecoratedBox(
      //                       decoration: BoxDecoration(
      //                         color: Colors.white,
      //                       ),
      //                       child: Center(
      //                         child: Text('♢Q'),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //
      //             // Player
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 SizedBox(
      //                   width: 80,
      //                   height: 120,
      //                   child: DecoratedBox(
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                     ),
      //                     child: Center(
      //                       child: Text('♤A'),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(width: 10),
      //                 SizedBox(
      //                   width: 80,
      //                   height: 120,
      //                   child: DecoratedBox(
      //                     decoration: BoxDecoration(
      //                       color: Colors.white,
      //                     ),
      //                     child: Center(
      //                       child: Text('♡J'),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //
      //             //todo チップ
      //             // // Tips
      //             // const SizedBox(height: 20),
      //             // Row(
      //             //   mainAxisAlignment: MainAxisAlignment.end,
      //             //   children: [
      //             //     Text(
      //             //       '\$1000',
      //             //       style: TextStyle(
      //             //         fontSize: 30,
      //             //         fontWeight: FontWeight.bold,
      //             //       ),
      //             //     ),
      //             //     SizedBox(
      //             //       width: 20,
      //             //     ),
      //             //   ],
      //             // ),
      //           ],
      //         ),
      //       ),
      //       Positioned(
      //         top: 20,
      //         left: 10,
      //         child: Visibility(
      //           visible: true,
      //           child: GestureDetector(
      //             onTap: () {
      //               // print('テスト');
      //               ref
      //                   .read(deckStoreStateNotifierProvider.notifier)
      //                   .drawCard();
      //             },
      //             child: Text(
      //               'reset',
      //               style: TextStyle(
      //                 fontSize: 20,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
