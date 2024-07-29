import 'package:flutter/material.dart';
import 'package:sub_dicoding_flutter_pemula/theme.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("images/author.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mufti Alie Satriawan",
                    style: blackTextStyle.copyWith(fontSize: 25),
                  ),
                  Text(
                    "Junior Mobile Developer",
                    style: regulerTextStyle.copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
