import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int duration = 45;
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      'Freshers Workshops',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.schedule),
                  Text('$duration min'),
                  SizedBox(
                    width: 28,
                  ),
                  Icon(Icons.location_history),
                  Text('LT1'),
                  SizedBox(
                    width: 28,
                  ),
                  InkWell(
                      focusColor: Colors.purple,
                      onTap: () {},
                      child: Icon(Icons.notifications_active),),
                  Text('Be notified'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
