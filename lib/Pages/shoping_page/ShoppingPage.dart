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
              child: Center( // Wrap the Row in a Center wid// get
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        hintText: 'Mau Belajar apa hari ini ?',
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        filled: true,
                        fillColor: Colors.grey[200], // Adjust the color as needed
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.grey[600], // Adjust the color as needed
                        ),
                      ),
                    ), // Icon(Icons
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
          body:
          TabBarView(
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
          
      )
      );
    }
  }


