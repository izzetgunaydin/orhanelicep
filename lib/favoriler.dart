import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

import 'constants.dart';

class Favoriler extends StatelessWidget {
  const Favoriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mavi,
          title: Text(
            'Favoriler',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
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
                              iconSize: 30,
                              icon: Icon(Icons.favorite),
                              onPressed: () {},
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
