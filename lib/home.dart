import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import './tracking.dart';
import 'academicshome.dart';
import './gymkhanahome.dart';
import './feed.dart';
import './settings_ui.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool value = true;
    return Scaffold(
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,

        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.explore,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.explore,
                color: Colors.deepPurple,
                size: 35,
              ),
              title: Text("Gymkhana")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.school,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.school,
                color: Colors.indigo,
                size: 35,
              ),
              title: Text("Acads")),
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
                size: 35,
              ),
              title: Text("Feed")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.track_changes,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.track_changes,
                color: Colors.indigo,
                size: 35,
              ),
              title: Text("Tracking")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.green,
                size: 35,
              ),
              title: Text("Settings"))
        ],
      ),
      body: new IndexedStack(
        index: currentIndex,
        children: <Widget>[
          new Gymkhana(),
          new Academics(),
          //MOHIT  add your functions here !!!!!!.
          new Feed(),
          new Tracking(),
          SettingsList(
            sections: [
              SettingsSection(
                title: 'Section',
                tiles: [
                  SettingsTile(
                    title: 'Language',
                    subtitle: 'English',
                    leading: Icon(Icons.language),
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: 'Logout',
                    subtitle: 'currently Signed in as MOHIT LUNIA',
                    leading: Icon(Icons.logout),
                    onTap: () {},
                  ),
                  SettingsTile.switchTile(
                    title: 'Enable Notification',
                    leading: Icon(Icons.notifications),
                    switchValue: value,
                    onToggle: (bool value) {},
                  ),
                  SettingsTile.switchTile(
                    title: 'Use fingerprint',
                    leading: Icon(Icons.fingerprint),
                    switchValue: value,
                    onToggle: (bool value) {},
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
