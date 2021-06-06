import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(storyLabel:"Add to story",dp:null, storyImage: beckamdp,),
          StoryCard(storyLabel:"Ali Bhai",dp:dsdpfive, storyImage: pseven,),
          StoryCard(storyLabel:"Hadi Afnan",dp:dsdpfour, storyImage: peight,),
          StoryCard(storyLabel:"Ifsin Abdullah",dp:dsdpsix, storyImage: pnine,),
        ],
      ),
    );
  }
}
