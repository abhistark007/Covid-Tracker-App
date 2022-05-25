// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print
import 'package:covid_app/models/data_container.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/models/apicall.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //To store country names
  List<dynamic> values1 = [];
  // To store statistics class objects
  List<dynamic> values2 = [];
  bool isLoading = true;

  @override
  void initState() {
    getValues();
    super.initState();
  }

  // Future<void> getValues1() async{
  //   values1=await ApiCalls.getCountry();
  //   setState(() {
  //     isLoading=false;
  //   });
  //   print(values1);
  // }

  // Future<void> getValues2() async{
  //   values2=await ApiCalls.getStatistics();
  //   setState(() {
  //     isLoading=false;
  //   });
  //   //print(values2);
  // }

  Future<void> getValues() async {
    values1 = await ApiCalls.getCountry();
    values2 = await ApiCalls.getStatistics();
    setState(() {
      isLoading = false;
    });
  }

  int value=0;
  bool positive=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid Tracker App"),
        centerTitle: true,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: values2.length,
              itemBuilder: (context, index) {
                return DataContainer(
                  country: values2[index].country, 
                  continent: values2[index].continent, 
                  population: values2[index].population, 
                  newcases: values2[index].cases.newcase, 
                  active: values2[index].cases.active, 
                  critical: values2[index].cases.critical, 
                  recovered: values2[index].cases.recovered, 
                  total: values2[index].cases.total);
              }),
      floatingActionButton: AnimatedToggleSwitch.dual(
        onChanged: (bool b) => setState(() { 
          positive = b;
          isLoading=true;
          getValues();
          }),
        onTap: (){

        }, current: positive,
        first: false,
        second: true,
        colorBuilder: (b) => b==0 ? Colors.red : Colors.green,
                iconBuilder: (value) => value==0
                    ? Icon(Icons.coronavirus_rounded)
                    : Icon(Icons.tag_faces_rounded),
                textBuilder: (value) => value==0
                    ? Center(child: Text('Wanna Reload'))
                    : Center(child: Text('Reloaded:)')),
      )
    );
  }
}
