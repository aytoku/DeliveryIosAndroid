import 'dart:ffi';
import 'package:flutter_app/models/ResponseData.dart';


class NecessaryAddressData {
  List<DestinationPoints> destinationPoints;

  NecessaryAddressData( {
    this.destinationPoints
  });

  factory NecessaryAddressData.fromJson(List<dynamic> parsedJson){

    var destination_points_list = parsedJson;
    List<DestinationPoints> destinationPointsList = null;
    if(destination_points_list != null){
      destinationPointsList = destination_points_list.map((i) =>
          DestinationPoints.fromJson(i)).toList();
    }

    return NecessaryAddressData(
      destinationPoints: destinationPointsList,
    );
  }
}