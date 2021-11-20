import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mentisano/Components/People.dart';
import 'package:Mentisano/Components/item_card.dart';


Expanded screen = Expanded(
  child: GridView.builder(
    itemCount: peoples.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75),
    itemBuilder: (context, index) => ItemCard(
      people: peoples[index],
      index: index,
    ),
  ),
);

Expanded screen1 = Expanded(
  child: GridView.builder(
    itemCount: mothers.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75),
    itemBuilder: (context, index) => ItemCard(
      people: mothers[index],
      index: index,
    ),
  ),
);

Expanded screen2 = Expanded(
  child: GridView.builder(
    itemCount: mothers.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75),
    itemBuilder: (context, index) => ItemCard(
      people: sisters[index],
      index: index,
    ),
  ),
);

Expanded screen3 = Expanded(
  child: GridView.builder(
    itemCount: mothers.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75),
    itemBuilder: (context, index) => ItemCard(
      people: fathers[index],
      index: index,
    ),
  ),
);

Expanded screen4 = Expanded(
  child: GridView.builder(
    itemCount: peoples.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 0.75),
    itemBuilder: (context, index) => ItemCard(
      people: brothers[index],
      index: index,
    ),
  ),
);


class Homepage extends StatelessWidget {
  static const String id = 'Rent';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Family and Friends',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
            color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
          ],
          bottom:TabBar(
            enableFeedback: true,
            isScrollable: true,
            labelColor:  Colors.grey.shade700,
            indicatorColor: Colors.blueGrey,
            tabs: [
              Tab(text: 'Friends'),
              Tab(text: 'Mothers'),
              Tab(text: 'Sisters'),
              Tab(text: 'Fathers'),
              Tab(text: 'Brothers'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: TabBarView(children: [screen,screen1,screen2,screen3,screen4]),
        ),
      ),
    );
  }
}
