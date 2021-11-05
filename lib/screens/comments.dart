import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/comment_model.dart';

Future<List<Comment>> fetchData(int id) async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$id/comments'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Comment.fromJson(data)).toList();
  } else {
    throw Exception('failed');
  }
}

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key, required this.id}) : super(key: key);

  final String title = "Comments";
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Comment>>(
        future: fetchData(id),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            List<Comment>? data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    title: Text(
                      data[i].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(data[i].body),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
