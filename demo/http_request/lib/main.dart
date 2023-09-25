import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}

Future<Photos> fetchPhotos() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));

  if (response.statusCode == 200) {
    return Photos.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load the Image');
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Photo Preview',
    home: PhotoPreview(),
  ));
}

class PhotoPreview extends StatefulWidget {
  @override
  _PhotoPreviewState createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  late Future<Photos> photos;
  @override
  void initState() {
    super.initState();
    photos = fetchPhotos();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP REQUEST'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1),
          ),
          child: FutureBuilder(
              future: photos,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
