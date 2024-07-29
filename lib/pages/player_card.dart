import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sub_dicoding_flutter_pemula/model/football_player.dart';

import '../theme.dart';
import 'detail_page.dart';

class PlayerCard extends StatelessWidget {
  final int gridCount;

  const PlayerCard({Key? key, required this.gridCount}) : super(key: key);

  final String assetName = 'images/position_player.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final FootballPlayer items = footballPlayerList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(child: DetailPage(player: items), type: PageTransitionType.rightToLeft),
              );
            },
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            items.playerImage,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Text(
                          items.playerName,
                          style: blackTextStyle.copyWith(fontSize: 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(assetName,
                                  semanticsLabel: "position player"),
                              Text(
                                items.playerPosition,
                                style: blackTextStyle.copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: footballPlayerList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCount, childAspectRatio: 2 / 4),
      ),
    );
  }
}
