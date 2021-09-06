import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = <String>[
      'Product 1',
      'Product 2',
      'Product 3',
      'Product 4',
      'Product 5'
    ];
    return SafeArea(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print('Tapped');
                },
                onLongPress: () {
                  print('Long Pressed');
                },
                leading: Icon(Icons.preview),
                title: Text(list[index]),
                subtitle: Text('Category'),
                trailing: Text('4/5'),
              );
            }));
  }
}
