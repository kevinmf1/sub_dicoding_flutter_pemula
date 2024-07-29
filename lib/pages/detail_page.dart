import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sub_dicoding_flutter_pemula/model/football_player.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  final FootballPlayer player;

  const DetailPage({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(player: player);
        } else {
          return DetailMobilePage(player: player);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final FootballPlayer player;

  const DetailMobilePage({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              player.playerImage,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 525,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  player.playerName,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Club : ',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: player.playerClub,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Position : ',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: player.playerPosition,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Active : ',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: player.activePlayer,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Goal/Assist : ',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text:
                                              "${player.goalPlayer}/${player.assistPlayer}",
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // NOTE : DESC
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Description',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Text(
                          player.descriptionPlayer,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final FootballPlayer player;

  const DetailWebPage({Key? key, required this.player}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      heading(context),
      body(),
    ])));
  }

  Widget heading(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Text(
            'Football Player Detail',
            style: blackTextStyle.copyWith(
              fontSize: 20.0,
            ),
          ),
          FavoriteButton(),
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.player.playerImage,
                              fit: BoxFit.cover))),
                  SizedBox(height: 30),
                  Text(
                    widget.player.playerName,
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Club : ',
                          style: greyTextStyle.copyWith(
                            fontSize: 22,
                          )),
                      Text(widget.player.playerClub,
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Position : ',
                          style: greyTextStyle  .copyWith(
                            fontSize: 22,
                          )),
                      Text(widget.player.playerPosition,
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Active : ',
                          style: greyTextStyle.copyWith(
                            fontSize: 22,
                          )),
                      Text(widget.player.activePlayer,
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Goals/Assists : ',
                          style: greyTextStyle.copyWith(
                            fontSize: 22,
                          )),
                      Text(
                          "${widget.player.goalPlayer}/${widget.player.assistPlayer}",
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                          )),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text('Description : ',
                      style: blackTextStyle.copyWith(fontSize: 22)),
                  SizedBox(height: 14.0),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffdedede),
                              offset: Offset(0, 2.0),
                              blurRadius: 8.0)
                        ]),
                    child: Text(
                      widget.player.descriptionPlayer,
                      style: regulerTextStyle.copyWith(fontSize: 22.0),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ))),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
