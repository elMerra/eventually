import 'package:flutter/material.dart';
import 'package:pandiller_alpha/screens/home_screen.dart';

class BottomAppbarExample extends StatefulWidget {
  const BottomAppbarExample({Key? key}) : super(key: key);

  @override
  _BottomAppbarExampleState createState() => _BottomAppbarExampleState();
}

class _BottomAppbarExampleState extends State<BottomAppbarExample> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  bool _isBottomBarNotched = true;
  bool _isFabMini = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            alignment: Alignment.center,
            height: 200,
            child: const Text('Dummy bottom sheet'),
          ),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: this._fabLocation,
      bottomNavigationBar: this.buildBottomAppBar(context),
    );
  }

  BottomAppBar buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      shape: this._isBottomBarNotched ? const CircularNotchedRectangle() : null,
      color: Theme.of(context).backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Bottom that pops up from the bottom of the screen.
          IconButton(
            padding: EdgeInsets.all(18),
            icon: const Icon(
              Icons.home_filled,
              size: 30,
            ),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                alignment: Alignment.center,
                height: 200,
                child: const Text('Dummy bottom sheet'),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.all(18),
            icon: const Icon(
              Icons.more_vert,
              size: 30,
            ),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => Container(
                alignment: Alignment.center,
                height: 200,
                child: const Text('Dummy bottom sheet'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
