import 'package:flutter/material.dart';
Padding myCard (image, intro, {fullwidth=false,special=false }) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
    ),
    child: fullwidth?Row(
      children: [
        SizedBox(
          height: 150,
          width: 200,
          child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
              child: Image.asset(image, fit: BoxFit.cover,),),
        ),
        Expanded(
          child: SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(intro),
                ),
                TextButton(onPressed: (){}, child:const Text("View Article"),)
              ],),
          ),
        )
      ],
    ):
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: special?Image.asset(image,fit: BoxFit.cover,): Image.asset(image,width: 200,height: 150,fit: BoxFit.cover,)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Text(intro),
        ),
        TextButton(onPressed: (){}, child:const Text("View Article"),)
      ],),
  ),
);
