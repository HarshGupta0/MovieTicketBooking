import 'package:flutter/material.dart';
import 'package:gradient_textfield/gradient_textfield.dart';
import 'package:movieticket/model/SearchModel.dart';

class InputText extends StatelessWidget {
  final String MylableText;
  InputText({
    Key? key,
    required this.MylableText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0, 1.0),
              spreadRadius: (1.0),
              blurRadius: (1.0),
            ),
          ],
        ),
        child: InkWell(
          onTap:  () {
            showSearch(
                context: context, delegate: CustomSearchDelegate()
            );
          },
          child:Text("$MylableText",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        ),
    );
  }
}
