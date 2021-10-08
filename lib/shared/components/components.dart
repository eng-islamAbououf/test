import 'package:flutter/material.dart';

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

Widget buildChildrenListItem({
  required List<String> children ,
})
{
  return ListView.separated(
    itemBuilder: (context,index)
    {
      return Column(
        children:
        [
          Text(
            '${children[0]}' ,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ) ;
    },
    separatorBuilder: (context,index) => myDivider(),
    itemCount: children.length ,
  ) ;
}