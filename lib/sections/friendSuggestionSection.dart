import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:facebook_clone/widgets/suggestionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendSuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 490,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(bottom:0,left:10,right: 10,top:0),
            title: Text("People you may know"),
            trailing: IconButton(icon: Icon(Icons.more_horiz),
              onPressed: (){print("more info");},)
          ),
          Container(
            color: Colors.white,
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  suggestionName: "Joel Ebi",
                  suggestionDp: dsdpsix,
                  mutFriendCount: "6",
                ),
                SuggestionCard(
                  suggestionName: "Louis Emmanuel",
                  suggestionDp: dsdptwo,
                  mutFriendCount: "10",
                ),
                SuggestionCard(
                  suggestionName: "Tom Thomas",
                  suggestionDp: dsdpseven,
                  mutFriendCount: "100",
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
