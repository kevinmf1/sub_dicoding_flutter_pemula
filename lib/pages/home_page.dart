import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sub_dicoding_flutter_pemula/pages/author_screen.dart';
import 'package:sub_dicoding_flutter_pemula/pages/player_card.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return HomeGrid(gridCount: 2);
        } else if (constraints.maxWidth <= 1200) {
          return HomeGrid(gridCount: 4);
        } else {
          return HomeGrid(gridCount: 6);
        }
      },
    );
  }
}

class HomeGrid extends StatelessWidget {
  final int gridCount;

  const HomeGrid({Key? key, required this.gridCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            // Row untuk judul dan ikon profil
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Football Player List',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'List of Popular Football Player',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 24),
                  child: CircleAvatar(
                    backgroundColor: Colors.black, // Warna lingkaran luar
                    radius: 20.0, // Ukuran lingkaran luar
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(child: AuthorScreen(), type: PageTransitionType.topToBottom)
                        );
                      },
                      icon: Icon(
                        Icons.person, // Ikon "person" bawaan
                        size: 20.0, // Ukuran ikon "person" di dalam lingkaran
                        color: Colors.white, // Warna ikon "person"
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: PlayerCard(gridCount: gridCount),
            ),
          ],
        ),
      ),
    );
  }
}