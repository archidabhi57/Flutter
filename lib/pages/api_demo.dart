import 'dart:convert';

import 'package:api_demo/model/CategoryListModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'insert_user/insert_user.dart';

class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 24,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return InsertUserPage(null);
              },
            )).then((value) {
              if (value == true) {
                setState(() {});
              }
            });
          },
        )
      ]),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return FutureBuilder<List<CategoryListModel>>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.network(
                                snapshot.data![index].imageUrl.toString(),
                                height: 80,
                                width: 80,
                              ),
                              Text(snapshot.data![index].title.toString()),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.length,
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
              future: getCategoriesFromApi(),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        future: isUserLogin(),
      ),
    );
  }

  Future<bool> isUserLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('IsUserLogin') ?? false;
  }

  Future<void> initPreference() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('IsUserLogin', true);
  }

  Future<List<CategoryListModel>> getCategoriesFromApi() async {
    http.Response res = await http.get(Uri.parse(
        'https://638029948efcfcedacfe0228.mockapi.io/api/Categories'));
    List<dynamic> jsonData = jsonDecode(res.body.toString());
    List<CategoryListModel> list = [];
    for (int i = 0; i < jsonData.length; i++) {
      list.add(CategoryListModel.fromJson(jsonData[i]));
    }
    return list;
  }
}
