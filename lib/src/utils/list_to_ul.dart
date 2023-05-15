import 'package:flutter/material.dart';

List<Widget> strListToWidgetList(List<String> list, bool ul){
  return list.asMap().map((index, value){
    return MapEntry(
      index,
      SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listDecoratio(ul, index),
            Flexible(child: Text(value)),
          ],),
      )
    );
  }).values.toList();
}

Widget listDecoratio(bool ul, int idx){
  if(ul){
    return const Padding(
      padding: EdgeInsets.only(right: 8, left: 15, top: 5),
      child: Icon(Icons.circle, size: 8,),
    );
  }
  return Padding(
    padding: const EdgeInsets.only(right: 4, left: 15),
    child: Text('$idx.', style: const TextStyle(fontWeight: FontWeight.bold),),
  );
}