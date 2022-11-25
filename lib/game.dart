import 'dart:math';

import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  String msg = "game is running";
  List<String> l = List.filled(9, "");
  List<String> l1 = List.filled(8, "");
  int j = 0, k = 0, i = 0, k1 = 0;
  String ki = "";
  int cnt = 0;
  String str = "";
  String s1 = " ";
  int temp = 0;
  bool winner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "game",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      msg = "game is running";
                      l = List.filled(9, "");
                      l1 = List.filled(8, "");
                      j = 0;
                      k = 0;
                      i = 0;
                      k1 = 0;
                      ki = "";
                      cnt = 0;
                      str = "";
                      s1 = " ";
                      temp = 0;
                      winner = false;
                      j = Random().nextInt(9);

                      l[j] = "";
                      for (int z = 0; z < 9; z++) {
                        if (z < j) {
                          l[i] = num();
                          i++;
                        } else if (z == j) {
                          i++;
                          continue;
                        } else if (z > j) {
                          l[i] = num();
                          i++;
                        }

                      }
                      setState(() {});
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      color: Colors.blueGrey,
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ))
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      color: Colors.blueGrey,
                      child: Text(
                        msg,
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ))
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  des(0),
                  des(1),
                  des(2),
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  des(3),
                  des(4),
                  des(5),
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  des(6),
                  des(7),
                  des(8),
                ],
              )),
        ],
      ),
    );
  }

  num() {
    k1 = Random().nextInt(8);

    while (true) {
      if (l1.contains(k1.toString())) {
        k1 = Random().nextInt(8);
      } else {
        break;
      }
    }
    ki = k1.toString();
    l1[k] = ki;
    k++;
    k1 = int.parse(ki);
    k1++;
    ki = k1.toString();
    return ki;
  }

  des(int i) {
    return Expanded(
        child: InkWell(
      onTap: () {
        check(i);
        win();
        setState(() {});
      },
      child: Container(
        height: double.infinity,
        width: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        color: Colors.grey,
        child: Text(l[i]),
      ),
    ));
  }

  win() {
    if (l[0] == "1" &&
        l[1] == "2" &&
        l[2] == "3" &&
        l[3] == "4" &&
        l[4] == "5" &&
        l[5] == "6" &&
        l[6] == "7" &&
        l[7] == "8" &&
        l[8] == "") {
      msg = "you win..";
      winner = true;
    }
  }

  check(int i) {
    if (!winner) {
      if (j == 0) {
        if (i == 1 || i == 3 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 1) {
        if (i == 0 || i == 2 || i == 4) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 2) {
        if (i == 1 || i == 5 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 3) {
        if (i == 0 || i == 4 || i == 6) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 4) {
        if (i == 1 || i == 3 || i == 5 || i == 7) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 5) {
        if (i == 2 || i == 4 || i == 8) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 6) {
        if (i == 3 || i == 7 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 7) {
        if (i == 6 || i == 4 || i == 8) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      } else if (j == 8) {
        if (i == 5 || i == 7 ) {
          s1 = l[i];
          l[i] = l[j];
          l[j] = s1;
          j = i;
        }
      }
    }
  }
}
