import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pandiller_alpha/Widgets/allButtons.dart';
import 'package:pandiller_alpha/widgets/allCards.dart';
import 'package:pandiller_alpha/screens/home_screen_public.dart';
import 'package:pandiller_alpha/widgets/profileImageAnimation.dart';

class CardEvents extends StatefulWidget {
  const CardEvents({Key? key}) : super(key: key);

  @override
  State<CardEvents> createState() => _CardEventsState();
}

class _CardEventsState extends State<CardEvents> {
  static const LatLng sourceLocation = LatLng(38.33500926, -122.03272188);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomAppBar(context),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            size: 25,
          ),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.map,
              size: 25,
            ),
            color: Colors.black,
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Button2(buttonText: 'Amigos'),
            SizedBox(
              height: 13,
              child: VerticalDivider(
                thickness: 1.5,
                width: 20,
                color: Colors.black,
              ),
            ),
            Button2(buttonText: 'Público'),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 85,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Image.asset('./assets/images/icon.png'),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 622,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: double.infinity,
                    child: Card1(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

BottomAppBar buildBottomAppBar(BuildContext context) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    color: Theme.of(context).backgroundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // Bottom that pops up from the bottom of the screen.
        IconButton(
          padding: const EdgeInsets.all(18),
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
          padding: const EdgeInsets.all(18),
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
