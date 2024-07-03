import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_ui/app/data/userdata.dart';

import '../../../models/data_model.dart';

class UnsplashService {
  final String _baseUrl = 'https://api.unsplash.com';
  final String _accessKey = 'EPUA61D_cW5ArmC-GFeX9qCZwtyRMhQPb0rDREx6xqQ';
  // var data;

  getPhotos() async {
    var response =
        await http.get(Uri.parse('$_baseUrl/photos/?client_id=$_accessKey'));

    if (response.statusCode == 200) {
      List photos = json.decode(response.body);

      if (kDebugMode) {
        // print(photos[1]["urls"]["regular"]);
        // print(photos[0]["id"]);
        // print(photos[0]["likes"]);
        // print(photos[0]["user"]["username"]);
        print("data loaded successfully");
      }

      for (int i = 0; i < 4; i++) {
        usersData.add(UserDataModel(
            id: photos[i]["id"],
            likes: photos[i]["likes"],
            imageUrl: photos[i]["urls"]["regular"],
            userProfileUrl: photos[i]["user"]["profile_image"]["large"],
            userName: photos[i]["user"]["username"]));
      }

      // usersData.add(UserDataModel(
      //     id: photos[0]["id"],
      //     likes: photos[0]["likes"],
      //     imageUrl: photos[1]["urls"]["regular"],
      //     userName: photos[0]["user"]["username"]));

      // data = photos;
      // return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
