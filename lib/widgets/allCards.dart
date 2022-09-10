import 'package:flutter/material.dart';

//Card type 1
class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      //elevation deteremines shade
      elevation: 10.0,
      child: SizedBox(
        height: 180.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('Card 1'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Card 1'), Text('Card 1')],
            )
          ],
        ),
      ),
    );
  }
}

//Card type 2
class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      margin: const EdgeInsets.all(20.0),
      elevation: 0.0,
      child: SizedBox(
        height: 100.0,
        child: InkWell(
          splashColor: Colors.deepOrange,
          onTap: () {},
          child: Row(
            children: const <Widget>[
              Expanded(
                child: Text('Card 2 with Inkwell effect on tap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Card type 3
class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.elliptical(40.0, 80.0),
        ),
      ),
      child: SizedBox(
        height: 100.0,
        child: Row(
          children: const <Widget>[
            Expanded(
              child: Text('Card 3 with custom border radius'),
            ),
          ],
        ),
      ),
    );
  }
}

//Card type 4
class Card4 extends StatelessWidget {
  const Card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/black.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
          ),
          ButtonBar(
            children: <Widget>[
              Column(
                children: const [
                  Text(
                    'UserName',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'sfdhalkjsfhdañskdfjhalsnkjdfhalskjdvhalkjdhfalkjshglajjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', // ! Max 105 char
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
