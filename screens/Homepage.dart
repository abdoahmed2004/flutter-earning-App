import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/screens/family_members.dart';
import 'Numbers.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            text1: "Number",
            color: Colors.orange,
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Numbers()));
            },
          ),
          Category(
            text1: "Family members",
            color: Colors.green,
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyMembers()));
            },
          ),
        ],
      ),
    );
  }
}
