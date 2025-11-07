// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:fistproject/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fistproject/pages/home-widgets/catalog_header.dart';
import 'package:fistproject/pages/home-widgets/catalog_list.dart'
    as catalog_list;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );
    final decodeData = jsonDecode(catalogJson);
    // print(decodeData);
    final productsData = decodeData["products"];
    // print(productsData);
    CatalogModel.items = newMethod(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    // CatalogModel.items.addAll(
    //   List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList(),
    // );
    setState(() {});
  }

  List<dynamic> newMethod(productsData) {
    return List.from(productsData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                const catalog_list.Cataloglist().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
