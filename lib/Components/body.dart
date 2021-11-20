import 'package:Mentisano/Screens/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'People.dart';

class Bodies extends StatelessWidget {
  final People people;
  const Bodies({Key? key, required this.people}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20.0, right: 20.0),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Be My Friend ☺️',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.blueGrey),
                                children: [
                                  TextSpan(text: 'Age\n'),
                                  TextSpan(
                                    text: "${people.age}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                        ),
                        child: Text(
                          people.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(height: 2.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SELECT HOURS",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          Text(
                            '❤',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              height: 50.0,
                              width: 58.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                border: Border.all(color: people.color),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add_shopping_cart_sharp),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50.0,
                                child: TextButton(
                                  style: TextButton.styleFrom(backgroundColor: people.color),
                                  onPressed: () {
                                    Navigator.pushNamed(context, Order.id);
                                  },
                                  child: Text(
                                    "Spent Time Now".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(people: people),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove_circle,
            pressed: () {
              if (number > 1) {
                setState(() {
                  number--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            number.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add_circle,
            pressed: () {
              setState(() {
                number++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required Function pressed}) {
    return SizedBox(
      width: 50.0,
      height: 32.0,
      child: OutlinedButton(
        onPressed: (){pressed();},
        child: Icon(
          icon,
          color: Colors.brown,
        ),
      ),
    );
  }
}

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.people,
  }) : super(key: key);

  final People people;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "College Student",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            people.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Cost\n"),
                    TextSpan(
                      text: "\₹${people.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: Hero(
                    tag: "${people.id}",
                    child: Image.asset(
                people.image,
                fit: BoxFit.fill,
              ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
