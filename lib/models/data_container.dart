// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class DataContainer extends StatefulWidget {
  final String country;
  final String continent;
  final String population;
  final String newcases;
  final String active;
  final String critical;
  final String recovered;
  final String total;
  // final List<dynamic> value1;
  // final List<dynamic> value2;
  const DataContainer({Key? key,required this.country
  ,required this.continent,
  required this.population,
  required this.newcases,
  required this.active,
  required this.critical,
  required this.recovered,
  required this.total
  }) : super(key: key);

  @override
  State<DataContainer> createState() => _DataContainerState();
}

class _DataContainerState extends State<DataContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Country",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.country}",style: TextStyle(fontSize: 20,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Continent",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.continent}",style: TextStyle(fontSize: 20,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Population",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.population}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("New Cases",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.newcases}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Active Cases",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.active}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Critical Cases",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.critical}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Recovered Cases",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.recovered}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total Cases",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),),
                  Text("${widget.total}",style: TextStyle(fontSize: 20,
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}