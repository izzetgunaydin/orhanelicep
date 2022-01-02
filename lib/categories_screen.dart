import 'dart:convert';

import 'package:flutter/material.dart';

import 'buttombar.dart';
import 'constants.dart';

import 'package:http/http.dart' as http;

import 'detay_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Future getCategories() async {
    var url =
        Uri.parse('http://192.168.64.2:80/orhanelicep/viewKategoriler.php');
    var response = await http.get(url);
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Orhaneli Cep',
            style: TextStyle(
              color: yesil,
            ),
          ),
          backgroundColor: mavi,
        ),
        body: FutureBuilder(
          future: getCategories(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? GridView.builder(
                    padding: const EdgeInsets.all(25),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      List list = snapshot.data;
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return DetayScreen(
                                  categoryId: list[index]['category_id'],
                                  categoryTitle: list[index]['category_name'],
                                );
                              },
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(15),
                        splashColor: Theme.of(context).primaryColor,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            list[index]['category_name'],
                            style: Theme.of(context).textTheme.caption,
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: mavi,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        bottomNavigationBar: Buttombar());
  }
}
