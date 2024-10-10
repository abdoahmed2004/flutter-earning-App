import 'package:flutter/material.dart';
import 'package:toku_app/models/Number_model.dart';
import 'package:toku_app/components/item.dart';

class Numbers extends StatelessWidget {
  Numbers({super.key});
  List<NumberModel> nums = [
    NumberModel(
        ennum: "One",
        jpnum: "ichi",
        image: "assets/images/numbers/number_one.png",
        sound: "sounds/numbers/number_one_sound.mp3"),
    NumberModel(
        ennum: "Two",
        jpnum: "Ni",
        image: "assets/images/numbers/number_two.png",
        sound: "sounds/numbers/number_two_sound.mp3"),
    NumberModel(
        ennum: "Three",
        jpnum: "San",
        image: "assets/images/numbers/number_three.png",
        sound: "sounds/numbers/number_three_sound.mp3"),
    NumberModel(
        ennum: "Four",
        jpnum: "shi/yon",
        image: "assets/images/numbers/number_four.png",
        sound: "sounds/numbers/number_four_sound.mp3"),
    NumberModel(
        ennum: "Five",
        jpnum: "go",
        image: "assets/images/numbers/number_five.png",
        sound: "sounds/numbers/number_five_sound.mp3"),
    NumberModel(
        ennum: "Six",
        jpnum: "roku",
        image: "assets/images/numbers/number_six.png",
        sound: "sounds/numbers/number_six_sound.mp3"),
    NumberModel(
        ennum: "Seven",
        jpnum: "shichi/nana",
        image: "assets/images/numbers/number_seven.png",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    NumberModel(
        ennum: "Eight",
        jpnum: "hachi",
        image: "assets/images/numbers/number_eight.png",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    NumberModel(
        ennum: "Nine",
        jpnum: "kyuu/ku",
        image: "assets/images/numbers/number_nine.png",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    NumberModel(
        ennum: "Ten",
        jpnum: "juu",
        image: "assets/images/numbers/number_ten.png",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return Item(Number: nums[index], color: Colors.orange);
        },
      ),
    );
  }

}
