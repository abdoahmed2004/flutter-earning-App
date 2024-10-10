import 'package:flutter/material.dart';
import 'package:toku_app/models/Number_model.dart';
import 'package:toku_app/components/item.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
  List<NumberModel> nums = [
    NumberModel(
        ennum: "father",
        jpnum: "chichioya",
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/daughter.wav"),
    NumberModel(
        ennum: "mother",
        jpnum: "hahaoya",
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav"),
    NumberModel(
        ennum: "son",
        jpnum: "musuko",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav"),
    NumberModel(
        ennum: "daughter",
        jpnum: "musume",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav"),
    NumberModel(
        ennum: "older brother",
        jpnum: "Nisan",
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older bother.wav"),
    NumberModel(
        ennum: "younger brother",
        jpnum: "otouto",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brohter.wav"),
    NumberModel(
        ennum: "older sister",
        jpnum: "ane",
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav"),
    NumberModel(
        ennum: "younger sister",
        jpnum: "imouto",
        image: "assets/images/family_members/family_younger_sister.png",
        sound: "sounds/family_members/younger sister.wav"),
    NumberModel(
        ennum: "grandfather",
        jpnum: "Ojisan",
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav"),
    NumberModel(
        ennum: "grandmother",
        jpnum: "Sobo",
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return Item(Number: nums[index], color: Colors.green);
        },
      ),
    );
  }
}
