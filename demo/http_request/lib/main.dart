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

Future<Photos> fetchPhotos(int albumId) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$albumId'));

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
  final _albumIdController = TextEditingController();
  void _fetchPhotos() {
    final albumId = int.parse(_albumIdController.text);

    setState(() {
      photos = fetchPhotos(albumId);
    });
  }

  @override
  void initState() {
    super.initState();
    photos = fetchPhotos(1);
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
            child: Column(
              children: [
                TextFormField(
                  controller: _albumIdController,
                  decoration: const InputDecoration(
                      hintText: 'Enter The Album Id Here!'),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                    onPressed: _fetchPhotos, child: const Text("SUBMIT")),
                FutureBuilder<Photos>(
                    future: photos,
                    builder: (context, snapshot) {
                      // Will Display the title of Photo with the Album Id!
                      if (snapshot.hasData) {
                        return Text(snapshot.data!.title);
                      }
                      // If the Error Actually exist this will print the throw() code from fetchPhotos()
                      else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      // Will Display The blue progress indicator until the future
                      return const CircularProgressIndicator();
                    })
              ],
            )),
      ),
    );
  }
}
