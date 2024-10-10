import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.text1, this.color,this.ontap});
  String? text1;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text1!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        color: color,
        height: 50,
        width: double.infinity,
      ),
    );
  }
}
