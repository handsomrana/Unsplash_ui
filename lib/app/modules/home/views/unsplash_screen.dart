// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:unsplash_ui/app/modules/home/services/unsplash_api_services.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Unsplash Demo',
//       home: PhotoSearchScreen(),
//     );
//   }
// }

// class PhotoSearchScreen extends StatefulWidget {
//   const PhotoSearchScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _PhotoSearchScreenState createState() => _PhotoSearchScreenState();
// }

// class _PhotoSearchScreenState extends State<PhotoSearchScreen> {
//   // final String _baseUrl = 'https://api.unsplash.com';
//   // final String _accessKey = 'EPUA61D_cW5ArmC-GFeX9qCZwtyRMhQPb0rDREx6xqQ';

//   // getPhotos() async {
//   //   var response =
//   //       await http.get(Uri.parse('$_baseUrl/photos/?client_id=$_accessKey'));

//   //   if (response.statusCode == 200) {
//   //     List photos = json.decode(response.body);

//   //     if (kDebugMode) {
//   //       print(photos[0]["urls"]["regular"]);
//   //       print(photos[0]["id"]);
//   //       print(photos[0]["likes"]);
//   //       print(photos[0]["user"]["username"]);
//   //     }

//   //     return photos;
//   //   } else {
//   //     throw Exception('Failed to load photos');
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Unsplash Demo'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 // getPhotos();
//               },
//               child: Text("data")),
//         ],
//       ),
//     );
//   }
// }
