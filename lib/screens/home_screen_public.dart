import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pandiller_alpha/Widgets/allButtons.dart';
import 'package:pandiller_alpha/widgets/allCards.dart';
import 'package:pandiller_alpha/screens/home_screen.dart';

class HomeScreenPublic extends StatefulWidget {
  const HomeScreenPublic({Key? key}) : super(key: key);

  @override
  State<HomeScreenPublic> createState() => _HomeScreenPublicState();
}

class _HomeScreenPublicState extends State<HomeScreenPublic> {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
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
      body: Stack(
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: GoogleMap(
                myLocationButtonEnabled: false,
                zoomGesturesEnabled: true,
                initialCameraPosition:
                    CameraPosition(target: sourceLocation, zoom: 14.1),
                mapType: MapType.none),
          ),
          Positioned(
            top: 65,
            left: 35,
            right: 35,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: Text(
                        'Search Bar',
                        style: TextStyle(fontSize: 20),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(Icons.search,
                        size: 25,
                        color: Theme.of(context).textTheme.bodyText1!.color),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tus amigos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 200,
                      width: 170,
                      child: Card4(),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
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
