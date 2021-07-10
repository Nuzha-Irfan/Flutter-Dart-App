import 'package:flutter/material.dart';
import 'package:flutter_app01_task2/models/places_model.dart';
import 'package:flutter_app01_task2/providers/places_data_provider.dart';
import 'package:flutter_app01_task2/screens/places_list_screen.dart';

class placeView extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String place;
  final int num;
  placeView(
      {required this.name,
      required this.image,
      required this.description,
      required this.place,
      required this.num});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(tag: "card$num",

    child:Card(
      shadowColor: Colors.blueAccent,
      elevation: 10,

    child:SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: InkWell(
          splashColor:Color.fromRGBO(145,145,145,1),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => placesListScreen()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover, ))
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
                description,
                style: TextStyle( fontWeight: FontWeight.bold,color: Color.fromRGBO(150, 155, 145, 1)),
              )
            ],
          ),
        ),
      ),
    ),
    ),
    );
  }
}
