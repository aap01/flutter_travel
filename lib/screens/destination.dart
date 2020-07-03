import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertravel/model/place.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Destination extends StatefulWidget {
  @override
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  Place _destination;
  Size size;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
    _destination = ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _getDestinationTop(),
          _getActivities(),
        ],
      ),
    );
  }

  _getActivities() {
    final _imageWidth = 140.0;
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final _activity = _destination.activities[index];
          final _imageBorderRadius = 10.0;
          return Container(
            margin: EdgeInsets.all(10.0),
            height: 200.0,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: _imageWidth/2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: _imageWidth,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2.0, 0.0),
                              color: Colors.black26,
                              blurRadius: 6.0
                            )
                          ]
                        ),
                        child: ClipRRect(
                          child: Image.asset(_activity.imageUrl,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(_imageBorderRadius),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(_activity.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('\$${_activity.price}',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      Text('per pax',
                                        style: TextStyle(
                                          color: Colors.black26
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4.0,),
                              Text(_activity.type,
                                style: TextStyle(
                                    color: Colors.black26
                                ),
                              ),
                              SizedBox(height: 4.0,),
                              Container(
                                height: 16.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Icon(Icons.star, color: Colors.yellow, size: 16.0,),
                                  itemCount: _activity.rating,
                                ),
                              ),
                              SizedBox(height: 4.0,),
                              Container(
                                height: 24,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Container(
                                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    alignment: Alignment.center,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Theme.of(context).accentColor,
                                    ),
                                    child: Text(_activity.startTimes[index]
                                    ),
                                  ),
                                  itemCount: _activity.startTimes.length,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: _destination.activities.length,
      ),
    );
  }

  _getDestinationTop() {
    return Container(
      height: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
        color: Colors.redAccent,
        boxShadow: [BoxShadow(offset: Offset(0, 2), color: Colors.black, blurRadius: 6.0),],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(_destination.imageUrl, fit: BoxFit.cover,),
            Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(_destination.city,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.locationArrow, size: 10.0, color: Colors.white70,),
                          SizedBox(width: 4.0,),
                          Text(_destination.country,
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                      Icon(FontAwesomeIcons.route, size: 16.0, color: Colors.white70,)
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: SafeArea(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back,color: Colors.white,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      children: [
                        Icon(Icons.search, color: Colors.white,),
                        SizedBox(width: 16.0,),
                        Icon(Icons.menu, color: Colors.white,),
                        SizedBox(width: 16.0,)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
    );
  }
}
