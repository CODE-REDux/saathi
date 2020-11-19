import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: 2,
      children: List.generate(
        5,
        (index) => Container(
          height: 10,
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                shadowColor: Colors.blue,
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FittedBox(child: Text('88%')),
                    ),
                  ),
                  title: Text(
                    'CSO 211',
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMEd().format(DateTime.now()),
                  ),
                  trailing: FlatButton.icon(
                    icon: Icon(Icons.thumb_up_sharp),
                    onPressed: () {},
                    label: Text('DONE'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
