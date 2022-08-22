/*
IMPORTANT
SliverAppBar must be used without anything around him (ex. no columns/row or anything)
*/

import 'package:flutter/material.dart';

class sliverAppBar extends StatefulWidget {
  const sliverAppBar({Key? key}) : super(key: key);

  @override
  State<sliverAppBar> createState() => _sliverAppBarState();
}

class _sliverAppBarState extends State<sliverAppBar> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SliverAppBar is declared in Scaffold.body, in slivers of a CustomScrollView
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('FlexibleSpaceTitle'),
              background: Image.asset(
                'assets/images/man.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead
          const SliverFillRemaining(
            child: Center(
              child: Text('Hello'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: this._getBottomAppBar(),
    );
  }

  Widget _getBottomAppBar() {
    return BottomAppBar(
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: <Widget>[
              const Text('Pinned'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._pinned = val;
                  });
                },
                value: this._pinned,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('Snap'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._snap = val;
                    //Snapping only applies when the app bar is floating
                    this._floating = this._floating || val;
                  });
                },
                value: this._snap,
              )
            ],
          ),
          Row(
            children: <Widget>[
              const Text('Floating'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._floating = val;
                    if (this._snap == true) {
                      if (this._floating != true) {
                        this._snap = false;
                      }
                    }
                  });
                },
                value: this._floating,
              ),
            ],
          )
        ],
      ),
    );
  }
}
