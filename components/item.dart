import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Number_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.Number, required this.color});
  final NumberModel Number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Container(
                color: Color(0xffFFF6DC), child: Image.asset(Number.image)),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                children: [
                  Text(
                    Number.jpnum,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    Number.ennum,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                  child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  try {
                    await player.play(
                      AssetSource(Number.sound),
                      volume: 2.0,
                    );
                  } catch (e) {
                    print("Error playing sound: $e");
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
                splashColor: Colors.black,
              )),
            ),
          ],
        ));
  }
}
