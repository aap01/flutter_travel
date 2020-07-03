import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertravel/model/hotel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/place.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int _selectedIconIndex = 0;

  final destList = places;

  final iconData = <IconData>[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index, Function fn) {
    final _isSelected = _selectedIconIndex == index;
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color:  _isSelected? Theme.of(context).accentColor : Color(0xFFEEEEEE),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(iconData[index], color: _isSelected? Theme.of(context).primaryColor : Color(0xFFC5C5C5)),
        onPressed: () {
          fn?.call();
          setState(() {
            _selectedIconIndex = index;
          });
        },
      ),
    );
  }

  _getSectionHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
            style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold
            ),
          ),
          Text('See All',
            style: TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor
            ),
          )
        ],
      ),
    );
  }

  _getDestinationCarousel() {
    final imageSize = Size(220.0, 180.0);
    final _imageBorderRadius = 20.0;
    return Container(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final destination = destList[index];
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: imageSize.height/2 + 60,
                    width: imageSize.width + 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_imageBorderRadius/2),
                      color: Colors.white70,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0, bottom: 10.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${destination.activities.length} activities',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0,
                                  fontSize: 22.0
                              ),
                            ),
                            SizedBox(height: 16.0,),
                            Text(destination.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: imageSize.height,
                  width: imageSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(_imageBorderRadius),
                      boxShadow: [BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0
                      )]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(_imageBorderRadius),
                    child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            destination.imageUrl,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(destination.city,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                        backgroundColor: Colors.black12
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(FontAwesomeIcons.locationArrow, color: Colors.white70,
                                            size: 10.0,),
                                          SizedBox(width: 10.0,),
                                          Text(destination.country,
                                            style: TextStyle(
                                                color: Colors.white70,
                                                backgroundColor: Colors.black12
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(FontAwesomeIcons.route, size: 16.0, color: Colors.white,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ]
                    ),
                  ),
                ),

              ],
            ),
          );
        },
        itemCount: places.length,

      ),
    );
  }

  _getHoterCarousel() {
    return Container(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Container(
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(hotel.imageUrl, fit: BoxFit.cover,),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(hotel.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 22.0
                                ),
                              ),
                              Text('\$${hotel.price}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0,),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.locationArrow, color: Colors.white70, size: 10.0,),
                              SizedBox(width: 10.0,),
                              Text(hotel.address,
                                style: TextStyle(
                                  color: Colors.white70
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: hotels.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text('What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: iconData
                  .asMap()
                  .entries
                  .map((e) => _buildIcon(e.key, (){}))
                  .toList(),
            ),
            SizedBox(height: 30.0,),
            _getSectionHeader('Top Destinations'),
            SizedBox(height: 16.0,),
            _getDestinationCarousel(),
            SizedBox(height: 30.0,),
            _getSectionHeader('Exclusive Hotels'),
            SizedBox(height: 16.0,),
            _getHoterCarousel()

          ],
        ),
      ),
    );
  }

}
