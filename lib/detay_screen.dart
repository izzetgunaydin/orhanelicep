import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'buttombar.dart';
import 'constants.dart';

class DetayScreen extends StatelessWidget {
  final int categoryId;
  final String categoryTitle;

  const DetayScreen(
      {Key? key, required this.categoryId, required this.categoryTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mavi,
          title: Text(
            categoryTitle,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        bottomNavigationBar: const Buttombar(),
        body: ListView(
          children: [
            Card(
              color: mavi,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              elevation: 20,
              margin: const EdgeInsets.only(
                  top: 20, left: 20, bottom: 5, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "İşletme",
                              style: TextStyle(
                                fontSize: 20,
                                color: yesil,
                                fontFamily: 'RobotoCondonsed',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              iconSize: 10,
                              icon: Image.asset(
                                  'assets/icons/phone-ringing-14.png'),
                              onPressed: () {
                                launch('tel:02248172721');
                              },
                            ),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              color: mavi,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              elevation: 20,
              margin: const EdgeInsets.only(
                  top: 20, left: 20, bottom: 5, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "İşletme",
                              style: TextStyle(
                                fontSize: 20,
                                color: yesil,
                                fontFamily: 'RobotoCondonsed',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              iconSize: 10,
                              icon: Image.asset(
                                  'assets/icons/phone-ringing-14.png'),
                              onPressed: () {
                                launch('tel:02248172721');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              color: mavi,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              elevation: 20,
              margin: const EdgeInsets.only(
                  top: 20, left: 20, bottom: 5, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "İşletme",
                              style: TextStyle(
                                fontSize: 20,
                                color: yesil,
                                fontFamily: 'RobotoCondonsed',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              iconSize: 10,
                              icon: Image.asset(
                                  'assets/icons/phone-ringing-14.png'),
                              onPressed: () {
                                launch('tel:02248172721');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
