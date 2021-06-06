
import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/navBar.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/sections/friendSuggestionSection.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Widget sectionDivider = Divider(height:8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            CircularButton(
              iconName: Icons.search,
              buttonIconSize: 28,
              containerColor: Colors.grey[300],
              buttonAction: () {
                print("searchbutton pressed");
              },
            ),
            CircularButton(
              iconName: Icons.chat,
              buttonIconSize: 28,
              containerColor: Colors.grey[300],
              buttonAction: () {
                print("chatbutton pressed");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            NavBar(),
            StatusSection(),
            sectionDivider,
            RoomSection(),
            sectionDivider,
            StorySection(),
            sectionDivider,
            PostCard(avatarPhoto: dsdpsix,
              profileName: "Ifsin Abdullah",
              postTime: "13 hrs",
              //postCaption: "",
              postImageName: pthree,
              likeCount: "38k",commentCount: "100",shareCount: "50",
            ),
            sectionDivider,
            PostCard(avatarPhoto: dsdpfour,
              profileName: "Hadi Afnan",
              postTime: "12 hrs",
              postCaption: "The Mercedes Benz SLS AMG. Synonym of Power, Style and Performance. Beauty! ",
              postImageName: ptwo,
              likeCount: "12k",commentCount: "300",shareCount: "60",
            ),
            sectionDivider,
            FriendSuggestionSection(),
            sectionDivider,
            PostCard(avatarPhoto: dsdpseven,
              profileName: "Afeef Ali",
              postTime: "9 hrs",
              postCaption: "The desert king, Toyota Land Cruiser 100 series. Toyoto doen"
                  "t make the OG Land Cruisers anymore. So sad. Look at this Lion! ",
              postImageName: pfive,
              likeCount: "12k",commentCount: "300",shareCount: "60",
            ),
          ],
        ),
      ),
    );
  }
}
