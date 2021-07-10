import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app01_task2/models/places_model.dart';
import 'package:flutter_app01_task2/providers/places_data_provider.dart';
import 'package:flutter_app01_task2/screens/detail_place_view.dart';

import 'package:provider/provider.dart';

class placesListScreen extends StatefulWidget {
  @override
  _placesListScreenState createState() => _placesListScreenState();
}

class _placesListScreenState extends State<placesListScreen> {
  void initState() {
    super.initState();
    final mdl = Provider.of<placeDataProvider>(context, listen: false);
    mdl.loadPlaces();
  }

  @override
  Widget build(BuildContext context) {
    final mdl = Provider.of<placeDataProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: mdl.placesList.length,
          itemBuilder: (context, index) {
            placesmodel places = mdl.placesList[index];

            return PlaceViewCard(
              name: places.name,
              shortDetail: places.shortDescription,
              image: places.image,
              place: places.place,
              description: places.description,
              num:index,
            );
          }),
    );
  }
}

class PlaceViewCard extends StatelessWidget {
  final int num;
  final String image;
  final String name;
  final String shortDetail;
  final String place;
  final String description;

  PlaceViewCard(
      {required this.shortDetail,
      required this.image,
      required this.name,
      required this.place,
      required this.description,
      required this.num});
  @override
  Widget build(BuildContext context) {
    return Hero(tag: "card$num",

    child: Card(

      shadowColor: Colors.blueAccent,
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),

        child: InkWell(
          splashColor:Color.fromRGBO(145,145,145,1),

          onTap: () {

            Navigator.push(

                context,
                MaterialPageRoute(
                    builder: (context) => placeView(
                          name: name,
                          image: image,
                          place: place,
                          description: description,
                          num: num,

                        ))

            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 200,

                decoration: BoxDecoration(

                    image: DecorationImage(

                        image: NetworkImage(image), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(10, 20, 5, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                place,
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(10, 20, 5, 1)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                shortDetail,
                style: TextStyle(color: Color.fromRGBO(145, 155, 165, 1)),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
