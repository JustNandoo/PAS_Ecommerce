  import 'package:flutter/material.dart';
  import 'package:flutter_ecommerce/component/categories.dart';
  import 'package:flutter_ecommerce/component/myButton.dart';

  class ShoppingPage extends StatelessWidget {
    const ShoppingPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              height: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center( // Wrap the Row in a Center widget
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xffDB3022),
              tabs: [
                Tab(text: 'Men'),
                Tab(text: 'Women'),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
      Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              mycont(),
              Categori()
            ],
          ),
        ),
      ),
                // Widget untuk konten Tab 2
          SingleChildScrollView(
            child: Column(
              children: [
                mycont(),
                Categori()
              ],
            ),
          )
              ],
            ),
          ),
      ));
    }
  }


