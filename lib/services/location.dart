import 'package:geolocator/geolocator.dart';

class Location{
  late double latitude;
  late double longtitue;
 
 Future<void>  getCurrentLocation() async{
    try{Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
        this.latitude=position.latitude;
        this.longtitue=position.longitude;
    print(position);

    }catch(e){
      print(e);
    }
 
   }


  
}